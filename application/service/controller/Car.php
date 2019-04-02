<?php
	namespace app\service\controller;
	use think\Db;
	use think\Cache;
	use think\Session;

	Class Car extends Common
	{
        #取出没有结算，并且没有过期的商品
        public function index()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $page=isset($data['page'])?$data['page']:"1";
                $size=isset($data['size'])?$data['size']:"10";
                $session3rd = $data['session3rd'];
                self::commonSession3rd($session3rd);
                $sessionKey = Cache::get($session3rd);
                self::commonSessionKey($sessionKey);
                $openid = Cache::get($session3rd.'openid');
                if( !$openid ){
                    return ajax_return('','会话过期,请重新登陆','500');
                }
                $carList =    Db::name('car')
                    ->alias('c')
                    ->field('fy_goods.*,fy_goods_attribute.point_score,c.goods_num,c.id as carId,c.val,c.sku_id,c.goods_id,c.create_time,c.id,fy_goods_attribute.store,fy_goods_attribute.price as price1,fy_goods.status')
                    ->join('fy_goods','fy_goods.id=c.goods_id')
                    ->join('fy_goods_attribute','fy_goods_attribute.id=c.sku_id','left')
                    ->where(['c.openid'=>$openid, 'c.status'=>1])
                    ->page($page,$size)
                    ->order('c.create_time desc')
                    ->select();
                $count = Db::name('car')
                    ->alias('c')
                    ->join('fy_goods','fy_goods.id=c.goods_id')
                    ->join('fy_goods_attribute','fy_goods_attribute.id=c.sku_id','left')
                    ->where([
                        'c.openid'=>$openid,
                        'c.status'=>1
                    ] )->count();
                return  empty($carList)?ajax_return('','no data',404):ajax_return($carList,'ok',200,['total'=>$count]);
            }
        }
        #添加到购物车
        public function  addCar()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $session3rd = $data['session3rd'];
                $sessionKey = Cache::get($session3rd);
                self::commonSession3rd($session3rd);
                self::commonSessionKey($sessionKey);
                $openid = Cache::get($session3rd.'openid');
                if(!$data['goodsId'] || !$data['skuId']  ){
                    return ajax_return('','缺少商品id或skuId',500);
                }
                $data['num'] = isset($data['num'])?$data['num']:1;

                $check =  Db::name('goods_attribute')->where(['id'=>$data['skuId']])->find();
                if($check['store']<$data['num']){
                    return ajax_return('','库存不足','401');
                }
                $goods = Db::name('goods')->where(['id'=>$data['goodsId']])->find();
                if($goods['show_area']==2 || $goods['show_area']==5 ){
                    $user = Db::name('customer')->where(['openid'=>$openid])->find();
                    if($user['score']<$check['point_score']){
                        return ajax_return('','你的积分不足，暂时不能加入购物车','402');
                    }
                }
               $carData = Db::name('car')
                    ->where([
                        'goods_id'=>$data['goodsId'],
                        'openid'=>$openid,
                        'sku_id'=>$data['skuId']
                        ])
                    ->find();
                $time =time();
                if($carData){
                    $res = Db::name('car')
                        ->where([
                            'goods_id'=>$data['goodsId'],
                            'openid'=>$openid,
                            'sku_id'=>$data['skuId']
                        ])->setInc('goods_num', ($data['num']!=0)?$data['num']:'1');
                }else{
                    $res = Db::name('car')
                        ->insert([
                            'goods_num'=>$data['num']?$data['num']:'1',
                            'update_time'=>$time,
                            'create_time'=>$time,
                            'goods_id'=>$data['goodsId'],
                            'openid'=>$openid,
                            'sku_id'=>$data['skuId'],
                            'val'=>isset($data['val'])?$data['val']:''
                        ]);
                }
                if($res){
                    return ajax_return('','添加成功','200');
                }else{
                    return ajax_return('','添加失败','403');
                }
            }

        }

        #删除
        public function  delCar()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $session3rd = $data['session3rd'];
                $sessionKey = Cache::get($session3rd);
                self::commonSession3rd($session3rd);
                self::commonSessionKey($sessionKey);
                $openid = Cache::get($session3rd.'openid');
                if(!$data['carId']){
                    return ajax_return_error('缺少参数id');
                }
            }
            $res = Db::name('car')->where(['id'=>$data['carId'],'openid'=>$openid])->delete();
            if($res){
                return ajax_return('','删除成功','200');
            }else{
                return ajax_return('','删除失败','400');
            }
        }

	}

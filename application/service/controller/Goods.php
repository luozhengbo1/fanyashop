<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/9/25
 * Time: 14:27
 */

    namespace app\service\controller;

    use think\Db;
    use think\Session;
    use think\Controller;
    use think\Cache;
    Class Goods extends Controller
    {
        #获取商品的 默认获取
        public function  getGoodsHotOrOther()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $page=isset($data['page'])?$data['page']:"1";
                $size=isset($data['size'])?$data['size']:"10";
                $show_area=isset($data['show_area'])?$data['show_area']:"4";
                $where = [];
                $where=['status'=>1,'isdelete'=>'0'];
                if($show_area!="all"){
                    $where['show_area'] =$show_area;
                }
                $goodsList = Db::name('goods')
                    ->field('id,name,buy_num,original_price,basic_price,main_image,basic_price,price_real,settlement_type,score')
                    ->where($where)
                    ->order('orderby desc ,create_time DESC')
                    ->page($page,$size)
                    ->select();
                $count = Db::name('goods')  ->where($where)->count();
                return  empty($goodsList)?ajax_return('','no data',404):ajax_return($goodsList,'ok',200,['total'=>$count]);
            }

        }

        #商品详情
        public function detail()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                if(!$data['id']){
                    return ajax_return('','缺少商品id','500');
                }
                $goods = Db::name('goods')->where(['id'=>$data['id']])->find();
                $goods['pic'] = $goods?json_decode($goods['pic'],true):'';
                return  empty($goods)?ajax_return('','no data',404):ajax_return($goods,'ok',200);
            }
        }

        #获取对应商品的sku
        public function getGoodsSku()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                if(empty($data['id'])){
                    return ajax_return('','缺少参数商品id',500);
                }
                $skuData =  Db::name('goods_attribute')
                    ->field('id,goods_id,attribute_name,goods_code,store,price,bar_code,point_score')
                    ->where(['goods_id'=>$data['id']])
                    ->select();
                return  empty($skuData)?ajax_return('','no data',404):ajax_return($skuData,'ok',200);
            }
        }
        #获取对应商品的属性名
        public function getGoodsPropertyName()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                if(empty($data['id'])){
                    return ajax_return('','缺少参数商品id',500);
                }
                $proprety_name =  Db::name('goods_proprety_name')
                    ->field('id,goods_id,name,goods_class_id')
                    ->where(['goods_id'=>$data['id']])
                    ->select();
                return  empty($proprety_name)?ajax_return('','no data',404):ajax_return($proprety_name,'ok',200);
            }

        }

        #获取对应商品的属性值
        public function getGoodsPropertyNameValue()
        {
            if($this->request->isPost()){
                $data=$this->request->post();
                if(empty($data['id'])){
                    return ajax_return('','缺少参数商品id',500);
                }
                $proprety_name_val =  Db::name('goods_proprety_name')->alias('n')
                    ->field('n.id as pro_id,n.name,fy_goods_proprety_val.value,fy_goods_proprety_val.id')
                    ->join('fy_goods_proprety_val','fy_goods_proprety_val.propre_name_id=n.id')
                    ->where(['n.goods_id'=>$data['id']])
                    ->select();
                return  empty($proprety_name_val)?ajax_return('','no data',404):ajax_return($proprety_name_val,'ok',200);
            }

        }
        #获取对应商品的评论接口
        public function  getGoodsComment()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $page=isset($data['page'])?$data['page']:"1";
                $size=isset($data['size'])?$data['size']:"10";
                if(empty($data['id'])){
                    return ajax_return('','缺少参数商品id',500);
                }
               $commentList =  Db::name('goods_comment')
                   ->where(['status'=>1,'goods_id'=>$data['id'] ])
                   ->page($page,$size)
                   ->order('create_time desc')
                   ->select();
                $count = Db::name('goods_comment')
                    ->where(['status'=>1,'goods_id'=>$data['id'] ])->count();
                return  empty($commentList)?ajax_return('','no data',404):ajax_return($commentList,'ok',200,['total'=>$count]);
            }


        }
        #获取对应的好中差评
        public function getGoodsgoodOrBad()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $id = $data['id'];
                if(empty($id)){
                    return ajax_return('','缺少参数商品id',500);
                }
                $getGoodsgoodOrBad = Cache::get('getGoodsgoodOrBad'.$id);
                if( !$getGoodsgoodOrBad ){
                    $all = Db::name('goods_comment')
                        ->where(['status'=>1,'goods_id'=>$id ])
                        ->count();
                    $bad = Db::name('goods_comment')
                        ->where(['status'=>1,'goods_id'=>$id,'avg_score'=>['between',[0,2] ]])
                        ->count();
                    $mid = Db::name('goods_comment')
                        ->where(['status'=>1,'goods_id'=>$id,'avg_score'=>['between',[2.0001,4] ]])
                        ->count();
                    $good = Db::name('goods_comment')
                        ->where(['status'=>1,'goods_id'=>$id,'avg_score'=>['between',[4.0001,5] ]])
                        ->count();
                    $getGoodsgoodOrBad=['all'=>$all,'bad'=>$bad,'mid'=>$mid,'good'=>$good];
                    Cache::set('getGoodsgoodOrBad'.$id,$getGoodsgoodOrBad,60*30);
                }
                return  empty($getGoodsgoodOrBad)?ajax_return('','no data',404):ajax_return($getGoodsgoodOrBad,'ok',200);
            }

        }

        #猜你喜欢
        public function guestYouLike()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $this->userInfo['openid'] = $data['openid'];
                if(empty($data['id'])){
                    return ajax_return('','缺少参数商品id',500);
                }
                #取出浏览记录中前10条 不含这个商品
                $broseList = Db::name('goods_browse')
                    ->field('goods_id')
                    ->where([ 'openid'=>$this->userInfo['openid'],'goods_id'=>['<>',$data['id']] ])
                    ->order('create_time desc')
                    ->select();

                #取出搜索记录
                $searchList =Db::name('search')
                    ->field('goods_id')
                    ->where([ 'openid'=>$this->userInfo['openid']] )
                    ->order('create_time desc')
                    ->limit(10)
                    ->select();
                if(!empty($broseList) || !empty($searchList) ){
                    $broseData = array_unique(array_column($broseList,'goods_id'));
                    $searcId =array_unique( array_column($searchList,'goods_id'));
                    $goodsId =join( array_unique(explode(',',join($broseData,',').','.join($searcId,','))),',' );
                }
                $thisGoods = Db::name('goods')->field('show_area')->where(['id'=>$data['id']])->find();
                if( !empty($goodsId) ){
                    $goodsList = Db::name('goods')
                        ->where(['status'=>1,'isdelete'=>0,'id'=>['in',$goodsId],'show_area'=>$thisGoods['show_area']])
                        ->limit(24)
                        ->select();
                }else{
                    $goodsClass = Db::name('goods')
                        ->field('goods_class_id')
                        ->where(['id'=>$data['id'],'status'=>1,'isdelete'=>0])
                        ->find();
                    $goodsList = Db::name('goods')
                        ->where(['status'=>1,'isdelete'=>'0','goods_class_id'=>$goodsClass['goods_class_id'],'show_area'=>$thisGoods['show_area' ] ])
                        ->limit(24)
                        ->select();
                }
                return  empty($goodsList)?ajax_return('','no data',404):ajax_return(array_chunk($goodsList,6,false),'ok',200);
            }

        }
        #清楚搜索记录
        public function delSearchHistory()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $this->userInfo['openid'] = $data['openid'];
                $res = Db::name('search')->where(['openid'=>$this->userInfo['openid']])->delete();
                return ajax_return('','删除成功',200);
            }
        }
        /**
         * 添加收藏
         */
        public function collect_update()
        {
            if ($this->request->isPost()) {
                $data = $this->request->post();
                $uid = $this->userInfo['id'] =   $data['openid'];
                $time = time();
                //若前端通过ajax传递了参数id，则进行编辑操作
                $collect = Db::name('customer_collect')
                    ->where(['uid' => $uid, 'goods_id' => $data['goods_id']])
                    ->find();
                if (!empty($collect)) {
                    //更新操作
                    $data['addtime']= $time;
                    $data['status'] = ($collect['status'] == 1)?0:1;
                    $msg= ($collect['status'] == 1)?'取消收藏':'收藏成功';
                    Db::name('customer_collect')->where('id', $collect['id'])->update($data);
                    return ajax_return('', $msg, 200);
                } else {
                    //保存操作
                    $data = [
                        'status' => 1,
                        'uid' => $uid,
                        'goods_id' => $data['goods_id'],
                        'addtime' => $time
                    ];
                    Db::name('customer_collect')->insert($data);
                    //dump('添加');
                    return ajax_return('', '收藏成功', 200);
                }

            }
        }

        #商品搜索
        public function goodsSearch()
        {
            $name = $this->request->param('goodsName');
            $page = $this->request->param('page')?$this->request->param('page'):'1';
            $size = $this->request->param('size')? $this->request->param('size'):'10';
            $showArea = $this->request->param('show_area')?$this->request->param('show_area'):'3,4';
            $tempArr = explode(",", $showArea);
            $time = time();
            $where = [
                'status'=>1,
                'isdelete'=>0,
                'show_area'=>['in',$tempArr],
            ];
            if($showArea ==1){
                //限时抢购，只查活动时间没有结束的活动
                // $where['start_date'] = ['<',$time];
                $where['end_date'] = ['>',$time];
            }
            //空查所有
            if(!empty($name) ){
                $where['name'] = ['like',"%$name%"];
            }
            $goodsList = Db::name('goods')
                ->where($where)
                ->page( $page,$size)
                ->select();
            $count =  Db::name('goods')
                ->where($where)->count();

            #记录搜索词
            $this->userInfo['openid']='';
            $data['openid'] =$this->userInfo['openid'];
            $data['search'] =$name;
            $data['create_time'] = time();
            if(!empty($name) &&  !empty( $data['openid'])){
                Db::name('search')->insert($data);
            }
            $searchId = Db::name('search')->getLastInsID();
            Db::name('search')
                ->where(['id'=>$searchId])
                ->update(['goods_id'=>join(array_column($goodsList,'id'),',')]);
            return ajax_return($goodsList,'ok','200',['total'=>$count]);

        }

    }
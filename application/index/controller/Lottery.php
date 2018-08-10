<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Cache;
use think\Session;

Class Lottery extends Mustlogin
{

    #券集市  取出没有结算，并且没有过期的奖券
    #根据分类id 查找商品 过滤条件：商品有券
    public function market()
    {
        $this->view->assign('titleName', '券集市');
        if($this->request->isAjax()){
            $page = $this->request->param('page');
            $size = $this->request->param('size');
            $goodsClassId = $this->request->param('goodsClassId');
            $time = time();
            $where =[
                'fy_goods.status'=>1,
                'fy_goods.isdelete'=>'0',
                'fy_lottery.grant_start_date' => ['<', $time],
                'fy_lottery.grant_end_date' => ['>', $time],
                'fy_lottery.status' =>1,
            ];
            if($goodsClassId !='all'){
                if(!$goodsClassId){
                    return ajax_return_error('缺少参数分类id');
                }
                #查询所有的子分类
                $goodsClassAllChild = getAllChildcateIds($goodsClassId);
                $where['fy_goods.goods_class_id'] = ['in',$goodsClassAllChild];
            }
            $goodsWithLottery = Db::name('goods')
                ->field(
                    'fy_lottery.*,
                    fy_goods_class.name as class_name')
                ->join('fy_lottery', 'fy_goods.id=fy_lottery.goods_id','left')
                ->join('fy_goods_class', 'fy_goods_class.id=fy_goods.goods_class_id','left')
                ->where($where)
                ->page($page,$size)
                ->select();
//            dump($goodsWithLottery);
          //  echo Db::name('goods')->getLastSql();die;
            return ajax_return($goodsWithLottery, '', '200');
            //带有券的商品
        }
        return $this->view->fetch('market');

    }
    #券详情
    public function detail($id,$goods_id,$type)
    {
        $this->assign('titleName', "券详情");
        $lottery = Db::name('lottery')
            ->where( ['id'=>$id,])->find();
        //  $lottery['lottery_info'] =json_decode($lottery['lottery_info'],true);
        $this->assign('lottery', $lottery);
        $this->assign('goods_id', $goods_id);
        $this->assign('type', $type);
        return  $this->view->fetch();

    }
    public function useDetail($id,$type,$useNum)
    {
        $this->assign('titleName', "使用详情");
        $lottery_log = Db::name('lottery_log')
            ->where( ['id'=>$id,])->find();
        $lottery_log['lottery_info'] =json_decode($lottery_log['lottery_info'],true);
        $this->assign('lottery_log',  $lottery_log);
        $this->assign('lottery',  $lottery_log['lottery_info']);
        $this->assign('type', $type);
        $this->assign('use_num',$useNum);
        return  $this->view->fetch("useDetail");

    }

    #券清单确认
    public function affairm($lottery_id,$goods_id)
    {
        $this->assign('titleName', "订单确认");
        $goods = Db::name('goods')
            ->where( [
                'id'=>['in',$goods_id],
            ])
            ->find();
        $lottery = Db::name('lottery')
            ->where( [
                'id'=>['in',$lottery_id],
            ])
            ->find();
        $this->assign('lottery', $lottery);
        $this->assign('goods', $goods);

        return  $this->view->fetch();

    }
    #未完成待续
    public function get()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['id']) {
                return ajax_return_error('缺少参数id');
            }
            $lottery = Db::name('lottery')->where(['id' => $data['id'], 'status' => '1'])->find();
          //  dump($lottery);
            if ($lottery['number'] < 1) {
                return ajax_return_error('奖券已经被领取完');
            }
            if ($lottery['grant_start_date'] > time() || $lottery['grant_end_date'] < time()) {
                return ajax_return_error('领取时间不对');
            }
            #查询是否领取过这个奖券
            $lotteryLog = Db::name('lottery_log')->where(['openid' => $this->userInfo['openid'], 'lottery_id' => $data['id']])->find();

            if ($lotteryLog) {
                return ajax_return_error('每人只能领一张');
            }
            #将数量减少，记录领取用户
            $insert = [];
            $insert['username'] = $this->userInfo['nickname'];
            $insert['uid'] = $this->userInfo['id'];
            $insert['addtime'] = time();
            $insert['lottery_id'] = $data['id'];
            $insert['status'] = 1;
            $insert['lottery_name'] = $lottery['name'];
            $insert['lottery_num'] = 1;
            $insert['use_num'] = 0;
            $insert['openid'] = $this->userInfo['openid'];
            $insert['lottery_info'] = json_encode($lottery);
            $res = Db::name('lottery')->where(['id' => $data['id']])->update(['number'=>$lottery['number']-1]);
            $res1 = Db::name('lottery_log')->insert($insert);
            if ($res && $res1) {
                return ajax_return('', '领取成功', '200');
            } else {
                return ajax_return_error('领取失败', '500');
            }
        }

    }

    /**
     * 我的卡券中心
     */
    public function mycardvoucher($page = '1', $size = '4', $status = '0')
    {
        if ($this->request->isAjax()) {
            //取未使用过的奖券
            if($status ==0){
                $where = [
                    'openid'=>$this->userInfo['openid']
                    ,'lottery_num'=>['>',0]];
            }else if($status ==1){
                $where = ['openid'=>$this->userInfo['openid'],'use_num'=>['>',0]];
            }
            $lotteryList = Db::name('lottery_log')->alias('log')
               // ->where(['openid'=>$this->userInfo['openid'],'log.use_num'=>($status==0)?'0':['<>',0]])
                   ->where($where)
//                ->where('lenght(order_id)>0')
                ->order('addtime','desc')
                ->page($page, $size)
                ->select();
            foreach ( $lotteryList as &$v){
                $v['lottery_info'] = json_decode( $v['lottery_info'],true);
            }
            if ($lotteryList) {
                return ajax_return($lotteryList, 'ok', 200);
            } else {
                return ajax_return('', 'no data', 204);
            }
        } else {
            $this->assign('titleName', "卡券中心");
            return $this->view->fetch('mycardVoucher');
        }
    }

    #商家扫码同意

    /**
     * @param $id 券id
     * @param $goods_id 商品id
     * @param $adminId  发行券商家id
     **/
    public function  adminUserScanCode($id,$use_num,$user_id){
        $this->assign('titleName', "商家扫码券");
        $tempUser = Db::table('fy_admin_user')   ->where([
                'openid'=> $this->userInfo['openid'],
                'id'=>$user_id
            ])
            ->find();
        if(!empty($tempUser)){
            $this->assign('titleName', "商户扫码");
            $lottery_log = Db::name('lottery_log')
                ->where( ['id'=>$id])->find();
            $lottery_log['lottery_info'] =json_decode($lottery_log['lottery_info'],true);
            $this->assign('lottery',  $lottery_log['lottery_info']);
            $this->assign('lottery_log',  $lottery_log);
            $this->assign('use_num',$use_num);
            return $this->view->fetch('adminUserScanCode');
        }else{
            return $this->view->fetch('noScanCode');
        }

    }

    #券的支付接口
    public function  payLottery()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['id'] || !$data['lottery_num'] ){
                return ajax_return_error('缺少奖券id');
            }
            #查出券相关信息
            $lottery = Db::name('lottery')->where(['id'=>(int)$data['id']])->find();
            #查询库存是否足够
            if($lottery['number']<$data['lottery_num']){
                return ajax_return('',"库存不足，只有{$lottery['number']}张",'500');
            }
            #生成订单数据
             $orderRow =[];
            $orderRow['lottery_id']=$lottery['id'];
            $orderRow['username']=$this->userInfo['nickname'];
            $orderRow['openid']=$this->userInfo['openid'];
            $orderRow['lottery_num']=$data['lottery_num'];
            $orderRow['total_price']=$lottery['coupon_real_money']*$data['lottery_num'];
            $orderRow['pay_status']=0;
            $orderRow['addtime']=time();
            $orderRow['lottery_info']=json_encode($lottery);
            $orderRow['is_tui']=0;
            $orderRow['order_status']=0;
            include_once "WxPaySDK/WxPay.Api.php";
            include_once "WxPaySDK/WxPay.JsApiPay.php";
            include_once 'WxPaySDK/log.php';
            include_once 'WxPaySDK/WxPay.Config.php';
            $wxConfig = new \WxPayConfig();
            $tools = new \JsApiPay();
            #订单总价的计算
            $orderId = $wxConfig->GetMerchantId().date("YmdHis");
            $orderRow['order_id']=$orderId;
//            $orderId = \WxPayConfig::MCHID.date("YmdHis");
            //$openId = $tools->GetOpenid(); # 获取微信用户信息，因为不在安全域名内，所以获取不到，使用github的实现。
            //②、统一下单
            $input = new \WxPayUnifiedOrder();
            $input->SetBody("泛亚商城 的订单");
            $input->SetAttach("附加参数");
            $input->SetOut_trade_no($orderId);
            $input->SetTotal_fee($orderRow['total_price']*100);
            $input->SetTime_start(date("YmdHis"));
            $input->SetTime_expire(date("YmdHis", time() + 1800));
            $input->SetGoods_tag("");
            #微信支付回调变更
            $notifyUrl = $wxConfig->GetNotifyUrl("http://".$_SERVER['HTTP_HOST']."/index.php/index/wechatpay/notify3");
            $input->SetNotify_url($notifyUrl);
            $input->SetTrade_type("JSAPI");
            $input->SetOpenid($this->userInfo['openid']);
            $unifiedOrder = \WxPayApi::unifiedOrder($wxConfig,$input);
            $jsApiParameters= $tools->GetJsApiParameters($unifiedOrder);
            $jsApiParameters = base64_encode($jsApiParameters);
            $orderRow['js_api_parameters']=$jsApiParameters;
            $orderRow['prepay_id']=$unifiedOrder['prepay_id'];
            #保存订单数据
            $res = Db::name('lottery_log')->insert($orderRow);
            if($res){
                $backData = array("msg" => "呼起支付", 'code' => 200, 'redirect' => url("pay/index")."?js_api_parameters={$jsApiParameters}&order_id={$orderId}&flag=flag");
                die(json_encode($backData));
            }else{
                return ajax_return('','支付调起失败','500');
            }
        }

    }
    #奖券使用
    public function useLottery()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['lottery_log_id'] ||  $data['num']<0){
                   return ajax_return('','参数不合法','500');
            }
            $lottery_log = Db::name('lottery_log')->where(['id'=>$data['lottery_log_id']])->find();
            $data['num'] = ($lottery_log['lottery_num']<$data['num'])?$lottery_log['lottery_num']: $data['num'];
            $lottery_log['lottery_info'] = json_decode( $lottery_log['lottery_info'],true);
            $insert =[];
            $insert['use_openid'] = $lottery_log['openid'];
            $insert['username'] =  $lottery_log['username'];
            $insert['create_time'] = time();
            $insert['num'] = $data['num'];
            $insert['lottery_id'] = $lottery_log['lottery_id'];
            $insert['lottery_log_id'] =$lottery_log['id'];
            $insert['shop_openid'] = $this->userInfo['openid'];
            $insert['status'] = 1;
            $insert['coupon_real_money'] =   $lottery_log['lottery_info'] ['coupon_real_money'];
            $insert['coupon_money'] =   $lottery_log['lottery_info'] ['coupon_money'];
            Db::name('use_lottery')->insert($insert);
            #减去对应数量，加上对应使用量
            Db::name('lottery_log')->where(['id'=>$data['lottery_log_id']])->setInc('use_num',$data['num']);
            Db::name('lottery_log')->where(['id'=>$data['lottery_log_id']])->setDec('lottery_num',$data['num']);
            return ajax_return('','使用成功','200');
        }

    }
}

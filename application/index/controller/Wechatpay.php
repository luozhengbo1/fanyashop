<?php
/*
*/
namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Session;

class Wechatpay extends Controller
{
    public function __construct(){
        header("content-type:text/html;charset=utf-8");
        parent::__construct();

    }

    # 微信支付回调
    public function notify()
    {

//        die;
        # 支付成功后更新支付状态，支付时间
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        $notify = new \PayNotifyCallBack();
        $notify->Handle(false);
        $orderInfo = \WxPayResults::Init($xml);
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log",$xml."\r", 8);
        } else {

            #查出两个子订单，将其状态改成已支付
            $where['order_id']=$orderInfo['out_trade_no'];
            $sonId = Db::name('order_all')->field('son_id')->where($where)->find();
            $arr =[];
            $arr = explode(',',$sonId['son_id']);
            foreach ($arr as $value){
                #修改子订单状态
                Db::name('order')
                    ->where(['order_id'=>$orderInfo['out_trade_no'].$value])
                    ->update(['order_status'=>1,'pay_status'=>1, 'pay_time' => time()]);
                #将子订单中对应的商品数量减少。
                $goodsOrder = Db::name('order_goods')->where(['order_id'=>$orderInfo['out_trade_no'].$value])->select();
                foreach ($goodsOrder as $v){
                    $goodsStore = Db::name('goods_attribute')->where(['id'=>$v['sku_id']])->find();
                    $store ='';
                    if($goodsStore['store']-$v['goods_num']<=0){
                        $store =0;
                    }
                    $store = $goodsStore['store']-$v['goods_num'];
                    #减库存
                    Db::name('goods_attribute')->where(['id'=>$goodsOrder['sku_id']])->update(['store'=>$store]);
                    #加上销量
                    Db::name('goods')->where(['id'=>$goodsStore['goods_id']])->seInc('buy_num',$goodsStore['store']);
                    #扣取相应的积分
//                    $goods = Db::name('goods')->where(['id'=>$v['goods_id']])->find();
                }
                $totalScore = $this->totalScore($goodsOrder);
                #将用户积分扣取，并将扣取记录记下来
                $userInfo =Session::get('wx_user');
                $user = Db::name('customer')
                $decScore = $user['score']-$totalScore;
                if($decScore<0)$decScore=0;
                Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->update(['score'=>$decScore]);
                #记录
                $scoreLog=[];
                $scoreLog['openid']=$this->userInfo['openid'];
                $scoreLog['source']=7;
                $scoreLog['uid']=$user['id'];
                $scoreLog['score']=-$decScore;
                $scoreLog['time']=time();
                Db::name('score_log')->insert($scoreLog);
                $jsApiParameters = base64_encode($jsApiParameters);

            }
            file_put_contents("wx_pay_success.log",$xml."\r", 8);
            # 订单id是微信统一下单接口生成的out_trade_no
            $orderWhere = ["order_id" => $orderInfo['out_trade_no'] ];
            $update = ['status' => 1];
            $res = Db::name("order_all")->where($orderWhere)->update($update);
            #付款成功通知
//            include_once "sendMsg/SDK/WeiXin.php";
//            $wx = new \WeiXin();
//            $wx->buySuccess('','','');
        }
        exit;
    }

    #统计积分合计
    public function totalScore($data)
    {
        $pay = 0;
        foreach ($data  as $val) {
            $res = Db::name('goods_attribute')->field('price,point_score')->where(['id'=>$val['skuId']])->find();
//                $goods = Db::name('goods')->where(['id'=>$val['goodsId']])->find();
            if (isset($val['num'])) {
                $pay += $res['point_score'] * $val['num'];
            }
//                if($goods['free_type']==0){
//                    $pay +=$goods['postage'];
//                }
        }
        return $pay;
    }

    #支付回调
    public function notify1()
    {
        # 支付成功后更新支付状态，支付时间
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        $notify = new \PayNotifyCallBack();
        $notify->Handle(false);
        $orderInfo = \WxPayResults::Init($xml);
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log",$xml."\r", 8);
        } else {
            $where['order_id']=$orderInfo['out_trade_no'];
            $data['pay_time']=time();
            $data['pay_status']=1;
            $data['order_status']=1;
            Db::name('order')->where($where)->update($data);
            #减对应商品的库存
            $goodsOrder = Db::name('order_goods')->field('sku_id,goods_num')->where(['order_id'=>$orderInfo['out_trade_no'].$value])->select();
            foreach ($goodsOrder as $v){
                $goodsStore = Db::name('goods_attribute')->where(['id'=>$v['sku_id']])->find();
                $store ='';
                if($goodsStore['store']-$v['goods_num']<=0){
                    $store =0;
                }
                $store = $goodsStore['store']-$v['goods_num'];
                #减库存
                Db::name('goods_attribute')->where(['id'=>$goodsOrder['sku_id']])->update(['store'=>$store]);
                #加销量
                Db::name('goods')->where(['id'=>$goodsStore['goods_id']])->seInc('buy_num',$goodsStore['store']);
            }
        }
    }


    /**
     *  array转xml
     */
    public function arrayToXml($arr)
    {
        $xml = "<xml>";
        foreach ($arr as $key => $val){
            if (is_numeric($val)){
                $xml .= "<".$key.">".$val."</".$key.">";
            }else{
                $xml .= "<".$key."><![CDATA[".$val."]]></".$key.">";
            }
        }
        $xml .= "</xml>";
        return $xml;
    }
    //使用证书，以post方式提交xml到对应的接口url

    /**
     *   作用：使用证书，以post方式提交xml到对应的接口url
     */
    function curl_post_ssl($url, $vars, $second=30)
    {
        $ch = curl_init();
        //超时时间
        curl_setopt($ch,CURLOPT_TIMEOUT,$second);
        curl_setopt($ch,CURLOPT_RETURNTRANSFER, 1);

        curl_setopt($ch,CURLOPT_URL,$url);
        curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);
        curl_setopt($ch,CURLOPT_SSL_VERIFYHOST,false);

        //以下两种方式需选择一种
        /******* 此处必须为文件服务器根目录绝对路径 不可使用变量代替*********/
        curl_setopt($ch,CURLOPT_SSLCERT,"/home/lzb/tpAdmin/application/index/controller/WxPaySDK/cert/apiclient_cert.pem");
        curl_setopt($ch,CURLOPT_SSLKEY,"/home/lzb/tpAdmin/application/index/controller/WxPaySDK/cert/apiclient_key.pem");

        curl_setopt($ch,CURLOPT_POST, 1);
        curl_setopt($ch,CURLOPT_POSTFIELDS,$vars);

        $data = curl_exec($ch);
        if($data){
//            echo 234;
            curl_close($ch);
            return $data;
        }else {
            $error = curl_errno($ch);
            echo "call faild, errorCode:$error\n";
            curl_close($ch);
            return false;
        }
    }

    //企业向个人付款
    public function payToUser($openid='omQYXwNAT5uC15TQqMGxajJzqo4s',$desc='提现成功',$amount='1')
    {
        //微信付款到个人的接口
        $url = 'https://api.mch.weixin.qq.com/mmpaymkttransfers/promotion/transfers';
        $params["mch_appid"]        = \think\Config::get('app_id');   //公众账号appid
        #商户号生成
        include_once 'WxPaySDK/WxPay.Api.php';
        $merchid = \WxPayConfig::MCHID;
        $params["mchid"]            = $merchid;   //商户号 微信支付平台账号
        $params["nonce_str"]        = 'longdongzhiye99'.mt_rand(100,999);   //随机字符串
        $params["partner_trade_no"] = mt_rand(10000000,99999999);           //商户订单号
        $params["amount"]           = $amount;          //金额
        $params["desc"]             = $desc;            //企业付款描述
        $params["openid"]           = $openid;          //用户openid
        $params["check_name"]       = 'NO_CHECK';       //不检验用户姓名
        $params['spbill_create_ip'] = get_client_ip();   //获取IP

           //生成签名(签名算法后面详细介绍)
        $str = 'amount='.$params["amount"].'&check_name='.$params["check_name"].'&desc='.$params["desc"].'&mch_appid='.$params["mch_appid"].'&mchid='.$params["mchid"].'&nonce_str='.$params["nonce_str"].'&openid='.$params["openid"].'&partner_trade_no='.$params["partner_trade_no"].'&spbill_create_ip='.$params['spbill_create_ip'].'&key=7c82dcb3c8437f7c654b57fb0509944b';
        $sign = strtoupper(md5($str));
//        var_dump($sign);
//        $sign =strtoupper(hash('sha256',$sign));
//        var_dump($sign);
        $params["sign"] = $sign;//签名
        $xml = $this->arrayToXml($params);
        return $this->curl_post_ssl($url, $xml);

    }

    public function  index()
    {
        $Wechatpay=new Wechatpay;
        $res = $Wechatpay -> payToUser();
//        var_dump($res);
    }


}


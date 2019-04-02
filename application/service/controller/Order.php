<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/9/28
 * Time: 10:45
 */
    namespace  app\service\controller;
    use think\Config;
    use think\Controller;
    use think\Db;
    use think\Cache;

    Class Order extends  Common
    {
        #确认订单接口
        public function  sureOrderApi()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
                $session3rd = $data['session3rd'];
                $sessionKey = Cache::get($session3rd);
                self::commonSession3rd($session3rd);
                self::commonSessionKey($sessionKey);
                $openid = Cache::get($session3rd.'openid');
                if( empty($data['goods_id']) || empty($data['sku_id']) || empty($data['sku_val']) || empty($data['num']) ){
                    return ajax_return('','缺少必要参数','500');
                }
                $goodsData =[];
                $total = 0;
                $data['goods_id'] = explode(',',$data['goods_id']);
                $data['num'] = explode(',',$data['num']);
                $data['sku_id'] = explode(',',$data['sku_id']);
                $data['sku_val'] = explode(',',$data['sku_val']);
                foreach ( $data['goods_id'] as $k=>$v ){
                    $goodsData[$k] =  Db::name('goods')
                        ->field('id,name,user_id,pic,main_image,postage')
                        ->where(['id'=>$v])
                        ->find();
                    $skuData = Db::name('goods_attribute')
                        ->field('price,id as sku_id,store')
                        ->where(['id'=>$data['sku_id'][$k]])
                        ->find();

                    #判断库存是否充足
                    if($data['num'][$k] > $skuData['store']){
                            return ajax_return('','商品库存不足','404');
                    }
                    $goodsData[$k]['total'] =$skuData['price']*$data['num'][$k] +$data['num'][$k]* $goodsData[$k]['postage'] ;
                    $goodsData[$k]['postage'] = $goodsData[$k]['postage'] *$data['num'][$k] ;
                    $goodsData[$k]['price'] = $skuData['price'];
                    $goodsData[$k]['sku_id'] = $skuData['sku_id'];
                    $goodsData[$k]['sku_val'] = $data['sku_val'][$k];
                    $goodsData[$k]['num'] = $data['num'][$k];
                }
                return ajax_return($goodsData,'ok','200');

            }

        }

        #创建订单接口
        public function createOrderApi()
        {
            if($this->request->isPost()){
                $data = $this->request->post();
//                if(!isset($data['address'])){
//                    return ajax_return('','缺少必要参数','500');
//                }
//                if(!$data['session3rd']  || empty($data['goods_id']) || empty($data['sku_id']) || empty($data['sku_val']) || empty($data['num']) || !$data['address'] ){
//                    return ajax_return('','缺少必要参数','500');
//                }
                $goodsData =[];
                $total = 0;
//                $session3rd = $data['session3rd'];
//                $sessionKey = Cache::get($session3rd);
//                self::commonSession3rd($session3rd);
//                self::commonSessionKey($sessionKey);
//                $data['openid'] = Cache::get($session3rd.'openid') ;
                $data['openid'] ='';
                $data['goods_id'] = explode(',',$data['goods_id']);
                $data['num'] = explode(',',$data['num']);
                $data['sku_id'] = explode(',',$data['sku_id']);
                $data['sku_val'] = explode(',',$data['sku_val']);
                foreach ( $data['goods_id'] as $k=>$v ){
                    $goodsData[$k] =  Db::name('goods')
                        ->field('id,name,user_id,pic,main_image,postage')
                        ->where(['id'=>$v])
                        ->find();
                    $skuData = Db::name('goods_attribute')
                        ->field('price,id as sku_id,store')
                        ->where(['id'=>$data['sku_id'][$k]])
                        ->find();
                    #判断库存是否充足
                    if($data['num'][$k] > $skuData['store']){
                        return ajax_return('','商品库存不足','404');
                    }
                    $total +=$skuData['price']*$data['num'][$k];
                    $goodsData[$k]['price'] = $skuData['price'];
                    $goodsData[$k]['sku_id'] = $skuData['sku_id'];
                    $goodsData[$k]['sku_val'] = $data['sku_val'][$k];
                    $goodsData[$k]['num'] = $data['num'][$k];
                }

                $time = time();
                $newData = [];
                foreach ($goodsData  as $k=>$v){
                    #分组
                    $newData[$goodsData[$k]['user_id']] = $v;
                }
                #订单号生成
                $orderAll = [];
                $sonId=[];
                $newData = array_values($newData);
                foreach ($newData as $k=>$v){
                    $sonId[] = rand(1000, 9999);
                    $userPrice[] = $this->calculateOrderValue($v);
                    $userPoint[] = $this->totalScore($v);
                    //订单表
                    $orderRow[$k] = array(
                        "order_id" => 'W'.Config::get('mchid').date("YmdHis") . $sonId[$k],
//                        "address_id" => $data[$k]['addressId'],
                        "address_detail" => $data['address'],
                        "openid" => $data['openid'],
                        "customer_name" => Db::name('customer')->where(['openid'=>$data['openid']])->find()['nickname'],
                        "total_price" => $userPrice[$k],
                        "goods_all" => join(array_column($v, 'goodsId'), ','),
                        "create_time" => $time,
                        "pay_status" => 0,#支付状态;0未付款;1已付款
                        "order_status" => 0,
//                        "buy_list"=>,
//                        "sku_val"=>$v['sku_val'],
//                        "type" => $type,
                        "total_point" => $userPoint[$k],
                        "user_id"=>$v['user_id'],
                    );
                }
                //订单商品表
                $orderGoods = [];
                foreach ($goodsData as $k=>$v){
                    $getgoodsData = Db::name('goods')->where(['id' => $v['id']])->find();
                    $orderGoods[$k]['goods_id'] = $v['id'];
                    $orderGoods[$k]['goods_num'] = $v['num'];
                    #该商品实际支付价格
                    $skuVal = Db::name('goods_attribute')->where(['id' => $v['sku_id']])->find();
                    $orderGoods[$k]['real_pay_price'] = $v['num'] * ($skuVal['price'] + $v['postage']);
                    $orderGoods[$k]['real_pay_score'] = $v['num'] * $skuVal['point_score'] ;
                    $orderGoods[$k]['sku_val'] = $v['sku_val'];
                    $orderGoods[$k]['sku_id'] = $v['sku_id'];
                    $orderGoods[$k]['goods_detail'] = json_encode($getgoodsData);
                    $orderGoods[$k]['openid'] = $data['openid'];
//                    $orderGoods[$k]['address_id'] = $v['addressId'];
                    $orderGoods[$k]['address_detail'] = $data['address'];
                    $orderGoods[$k]['user_id'] = $v['user_id'];
                    foreach ($orderRow as $key=> $value) {
                        #加上对应的order_id
                        if ($v['user_id'] == $value['user_id']) {
                            $orderGoods[$k]['order_id'] = $value['order_id'];
                        }
                    }
                }
                $orderAll['order_id'] = 'W'.Config::get('mchid').date("YmdHis");
                $orderAll['son_id'] =join($sonId,',') ;
                $orderAll['status']=0;
                $orderAll['create_time']=$time;
                $orderAll['total_price']=$total ;
                $orderAll['is_tui']=0 ;
                #价格大于0 发起支付
                if( $orderAll['total_price']>0){
//
                    Db::name('order')->insertAll($orderRow);
                    Db::name('order_all')->insert($orderAll);
                    Db::name('order_goods')->insertAll($orderGoods);
                    dump($orderRow);
                    dump($orderAll);
                    dump($orderGoods);die;


                }


            }

        }
        #统计积分合计
        public function totalScore($data)
        {
            $pay = 0;
            $goods = Db::name('goods')->where(['id' => $data['id']])->find();
            $res = Db::name('goods_attribute')->field('price,point_score')->where(['id' => $data['sku_id']])->find();
            if ($goods['settlement_type'] == 2 || $goods['settlement_type'] == 3) {
                if (isset($res['num'])) {
                    $pay += $res['point_score'] * $res['num'];
                }
            }
            return $pay;
        }
        # 计算订单总价值
        public function calculateOrderValue($data)
        {
            $pay = 0;
            $res = Db::name('goods_attribute')->field('price')->where(['id' => $data['sku_id']])->find();
            $goods = Db::name('goods')->field('postage,free_type')->where(['id' => $data['id']])->find();
            if (isset($res['num'])) {
                $pay += $res['price'] * $res['num'];
            }
            if ($goods['free_type'] == 0) {
                $pay += $goods['postage'] * $res['num'];
            }
            return $pay;
//            return 0.01;
        }
        public function  test()
        {
        }
        /* 小程序报名，生成订单 */
//        public function make_order(){
//            if(IS_POST){
//                $data['openid'] = I('POST.openid');
//                $data_total = I('POST.data_total');
//                $data['crsNo'] = 'W'.date('YmdHis',time()).'-'.get_random(2);
//                $insertId = M('home_order','xxf_witkey_')->add($data);
//                if($insertId){
//                    $this->insertID = $insertId;
//                    $this->data_total = $data_total*100;    //订单总金额，单位分
//                    /* 调用微信【统一下单】 */
//                    $this->pay($data_total*100,$data['openid'],$data['crsNo']);
//                }else{
//                    echo $insertId;
//                }
//                //echo json_encode($re);
//            }
//        }



        /* 首先在服务器端调用微信【统一下单】接口，返回prepay_id和sign签名等信息给前端，前端调用微信支付接口 */
        private function Pay($total_fee,$openid,$order_id){
            if(empty($total_fee)){
                echo json_encode(array('state'=>0,'Msg'=>'金额有误'));exit;
            }
            if(empty($openid)){
                echo json_encode(array('state'=>0,'Msg'=>'登录失效，请重新登录(openid参数有误)'));exit;
            }
            if(empty($order_id)){
                echo json_encode(array('state'=>0,'Msg'=>'自定义订单有误'));exit;
            }
            $appid =        Config::get('x_appid');//如果是公众号 就是公众号的appid;小程序就是小程序的appid
            $body =         '自己填';
            $mch_id =       Config::get('mchid');
            $KEY = Config::get('wx_key');
            $nonce_str =    get_random(32);//随机字符串
            $notify_url =   'https://m.******.com/index.php/Home/Xiaoxxf/xiao_notify_url';  //支付完成回调地址url,不能带参数
            $out_trade_no = $order_id;//商户订单号
            $spbill_create_ip = $_SERVER['SERVER_ADDR'];
            $trade_type = 'JSAPI';//交易类型 默认JSAPI

            //这里是按照顺序的 因为下面的签名是按照(字典序)顺序 排序错误 肯定出错
            $post['appid'] = $appid;
            $post['body'] = $body;
            $post['mch_id'] = $mch_id;
            $post['nonce_str'] = $nonce_str;//随机字符串
            $post['notify_url'] = $notify_url;
            $post['openid'] = $openid;
            $post['out_trade_no'] = $out_trade_no;
            $post['spbill_create_ip'] = $spbill_create_ip;//服务器终端的ip
            $post['total_fee'] = intval($total_fee);        //总金额 最低为一分钱 必须是整数
            $post['trade_type'] = $trade_type;
            $sign = $this->MakeSign($post,$KEY);              //签名
            $this->sign = $sign;

            $post_xml = '<xml>
               <appid>'.$appid.'</appid>
               <body>'.$body.'</body>
               <mch_id>'.$mch_id.'</mch_id>
               <nonce_str>'.$nonce_str.'</nonce_str>
               <notify_url>'.$notify_url.'</notify_url>
               <openid>'.$openid.'</openid>
               <out_trade_no>'.$out_trade_no.'</out_trade_no>
               <spbill_create_ip>'.$spbill_create_ip.'</spbill_create_ip>
               <total_fee>'.$total_fee.'</total_fee>
               <trade_type>'.$trade_type.'</trade_type>
               <sign>'.$sign.'</sign>
            </xml> ';

            //统一下单接口prepay_id
            $url = 'https://api.mch.weixin.qq.com/pay/unifiedorder';
            $xml = $this->http_request($url,$post_xml);     //POST方式请求http
            $array = $this->xml2array($xml);               //将【统一下单】api返回xml数据转换成数组，全要大写
            if($array['RETURN_CODE'] == 'SUCCESS' && $array['RESULT_CODE'] == 'SUCCESS'){
                $time = time();
                $tmp='';                            //临时数组用于签名
                $tmp['appId'] = $appid;
                $tmp['nonceStr'] = $nonce_str;
                $tmp['package'] = 'prepay_id='.$array['PREPAY_ID'];
                $tmp['signType'] = 'MD5';
                $tmp['timeStamp'] = "$time";

                $data['state'] = 1;
                $data['timeStamp'] = "$time";           //时间戳
                $data['nonceStr'] = $nonce_str;         //随机字符串
                $data['signType'] = 'MD5';              //签名算法，暂支持 MD5
                $data['package'] = 'prepay_id='.$array['PREPAY_ID'];   //统一下单接口返回的 prepay_id 参数值，提交格式如：prepay_id=*
                $data['paySign'] = $this->MakeSign($tmp,$KEY);       //签名,具体签名方案参见微信公众号支付帮助文档;
                $data['out_trade_no'] = $out_trade_no;

            }else{
                $data['state'] = 0;
                $data['text'] = "错误";
                $data['RETURN_CODE'] = $array['RETURN_CODE'];
                $data['RETURN_MSG'] = $array['RETURN_MSG'];
            }
            echo json_encode($data);
        }

        /**
         * 生成签名, $KEY就是支付key
         * @return 签名
         */
        public function MakeSign( $params,$KEY){
            //签名步骤一：按字典序排序数组参数
            ksort($params);
            $string = $this->ToUrlParams($params);  //参数进行拼接key=value&k=v
            //签名步骤二：在string后加入KEY
            $string = $string . "&key=".$KEY;
            //签名步骤三：MD5加密
            $string = md5($string);
            //签名步骤四：所有字符转为大写
            $result = strtoupper($string);
            return $result;
        }
        /**
         * 将参数拼接为url: key=value&key=value
         * @param $params
         * @return string
         */
        public function ToUrlParams( $params ){
            $string = '';
            if( !empty($params) ){
                $array = array();
                foreach( $params as $key => $value ){
                    $array[] = $key.'='.$value;
                }
                $string = implode("&",$array);
            }
            return $string;
        }
        /**
         * 调用接口， $data是数组参数
         * @return 签名
         */
        public function http_request($url,$data = null,$headers=array())
        {
            $curl = curl_init();
            if( count($headers) >= 1 ){
                curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
            }
            curl_setopt($curl, CURLOPT_URL, $url);

            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);

            if (!empty($data)){
                curl_setopt($curl, CURLOPT_POST, 1);
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            }
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            $output = curl_exec($curl);
            curl_close($curl);
            return $output;
        }
        //获取xml里面数据，转换成array
        private function xml2array($xml){
            $p = xml_parser_create();
            xml_parse_into_struct($p, $xml, $vals, $index);
            xml_parser_free($p);
            $data = "";
            foreach ($index as $key=>$value) {
                if($key == 'xml' || $key == 'XML') continue;
                $tag = $vals[$value[0]]['tag'];
                $value = $vals[$value[0]]['value'];
                $data[$tag] = $value;
            }
            return $data;
        }


        /**
         * 将xml转为array
         * @param string $xml
         * return array
         */
        public function xml_to_array($xml){
            if(!$xml){
                return false;
            }
            //将XML转为array
            //禁止引用外部xml实体
            libxml_disable_entity_loader(true);
            $data = json_decode(json_encode(simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA)), true);
            return $data;
        }

        //还有就是，微信要求支付后处理微信发送的回调内容，就是告诉商户，订单交易成功了，你要发送‘我知道了’给微信。
        //还有一点就是：这里就是回调url，你预支付填写的notify_url地址。废话不多说，看下面


        /* 微信支付完成，回调地址url方法  xiao_notify_url() */
        public function xiao_notify_url(){
            //$post = post_data();    //接受POST数据
            $post = $_POST;

            $post_data = $this->xml_to_array($post);   //微信支付成功，返回回调地址url的数据：XML转数组Array
            $postSign = $post_data['sign'];
            unset($post_data['sign']);

            /* 微信官方提醒：
             *  商户系统对于支付结果通知的内容一定要做【签名验证】,
             *  并校验返回的【订单金额是否与商户侧的订单金额】一致，
             *  防止数据泄漏导致出现“假通知”，造成资金损失。
             */
            ksort($post_data);// 对数据进行排序
            $str = $this->ToUrlParams($post_data);//对数组数据拼接成key=value字符串
            $user_sign = strtoupper(md5($post_data));   //再次生成签名，与$postSign比较

            $where['crsNo'] = $post_data['out_trade_no'];
            $order_status = M('home_order','xxf_witkey_')->where($where)->find();

            if($post_data['return_code']=='SUCCESS'&&$postSign){
                /*
                * 首先判断，订单是否已经更新为ok，因为微信会总共发送8次回调确认
                * 其次，订单已经为ok的，直接返回SUCCESS
                * 最后，订单没有为ok的，更新状态为ok，返回SUCCESS
                */
                if($order_status['order_status']=='ok'){
                    $this->return_success();
                }else{
                    $updata['order_status'] = 'ok';
                    if(M('home_order','xxf_witkey_')->where($where)->save($updata)){
                        $this->return_success();
                    }
                }
            }else{
                echo '微信支付失败';
            }
        }

        /*
         * 给微信发送确认订单金额和签名正确，SUCCESS信息 -xzz0521
         */
        private function return_success(){
            $return['return_code'] = 'SUCCESS';
            $return['return_msg'] = 'OK';
            $xml_post = '<xml>
                    <return_code>'.$return['return_code'].'</return_code>
                    <return_msg>'.$return['return_msg'].'</return_msg>
                    </xml>';
            echo $xml_post;exit;
        }

    }
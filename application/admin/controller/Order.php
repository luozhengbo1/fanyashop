<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;

class Order extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("order_id")) {
            $map['fy_order.order_id'] = ["like", "%" . $this->request->param("order_id") . "%"];
        }
        if ($this->request->param("order_status")) {
            $map['fy_order.order_status'] = $this->request->param("order_status");
        }
        #
        if ($this->request->param("user_id")) {
            $map['fy_order.user_id'] = $this->request->param("user_id");
        }
        if ($this->request->param("customer_name")) {
            $map['fy_order.customer_name'] = ["like", "%" . $this->request->param("customer_name") . "%"];
        }
        if ($this->request->param("create_time_start") || $this->request->param("create_time_end") ) {
            $map['fy_order.create_time'] = [
                'between',
                [
                    strtotime($this->request->param("create_time_start")),
                    strtotime($this->request->param("create_time_end"))
                ]
            ];
        }



    }

    public function  index()
    {
        $model = $this->getModel();

        // 列表过滤器，生成查询Map对象
        #表单搜获
//        $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

        // 特殊过滤器，后缀是方法名的
        #search 搜索
        $actionFilter = 'filter' . $this->request->action();
        if (method_exists($this, $actionFilter)) {
            $this->$actionFilter($map);
        }
        // 自定义过滤器
        if (method_exists($this, 'filter')) {
            $this->filter($map);
        }
        if($_SESSION['think']['auth_id']!=1){
            $map['fy_order.user_id'] = $_SESSION['think']['auth_id'];
        }
        $map['fy_order.isdelete'] =0;
        $userList = Db::name('admin_user')->where(['isdelete'=>0,'id'=>['>',1]])->select();
        $orderList = Db::name('order')
           ->field('fy_order.id,fy_order.buy_list,fy_order.address_id,
            fy_order.order_id,fy_order.order_status,fy_order.total_price,fy_order.customer_name,fy_order.customer_name,fy_order.create_time,fy_order.pay_time,
            fy_order_goods.user_id')
            ->join( 'fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
            ->order('fy_order.create_time desc')
            ->where($map)
            ->group('fy_order.order_id')
            ->paginate(5);
        $this->view->assign ('userList',$userList);
        $this->view->assign('list',$orderList);
        $this->view->assign('count',Db::name('order')->where($map)->count());
        return $this->  view->fetch();
    }

    /**
     * 回收站
     * @return mixed
     */
    public function recycleBin()
    {
//        $this::$isdelete= 1;
        $map['fy_order.isdelete'] =1;
        $userList = Db::name('admin_user')->where(['isdelete'=>0,'id'=>['>',1]])->select();
        $orderList = Db::name('order')
            ->field(

                'fy_order.id,fy_order.buy_list,fy_order.address_id,
            fy_order.order_id,fy_order.order_status,fy_order.total_price,fy_order.customer_name,fy_order.customer_name,fy_order.create_time,fy_order.pay_time,
            fy_order_goods.user_id')
            ->join( 'fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
            ->order('fy_order.create_time desc')
            ->where($map)
            ->group('fy_order.order_id')
            ->paginate(1);
        $this->view->assign ('userList',$userList);
        $this->view->assign('list',$orderList);
        $this->view->assign('count',Db::name('order')->where($map)->count());
        return $this->view->fetch('indexrecyclebin');
    }


    public function orderDetail()
    {
        $id = $this->request->param('id');
        if(!$id){
            return $this->error('缺少参数订单id');
        }
        $orderDetail = Db::name('order')
            ->field(' fy_order.id,
            fy_order.order_id,fy_order.order_status,fy_order.total_price,fy_order.customer_name,fy_order.customer_name,fy_order.create_time,fy_order.pay_time,
            fy_order_goods.*, fy_goods_attribute.store,fy_goods_attribute.price')
            ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
            ->join('fy_goods_attribute','fy_order_goods.sku_id=fy_goods_attribute.id','left')
            ->where(['fy_order.order_id'=>$id])
            ->select();
//        dump($id);
//        dump($orderDetail);die;
        $address = Db::name('customer_address')
            ->where(['id'=>$orderDetail[0]['address_id']])
            ->find();

        foreach (  $orderDetail as $k=> $v){
            $orderDetail[$k]['goods_detail'] = json_decode($orderDetail[$k]['goods_detail'],true);
        }
        $this->view->assign('address',$address);
        $this->view->assign('orderDetail',$orderDetail);
        return $this->view->fetch('orderdetail');
    }

    #添加物流信息
    public function addPost()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['id']){
                return ajax_return_error('缺少参数id');
            }
            $res = Db::name('order_goods')
                ->where(['id'=>$data['id']])
                ->update([
                    'logistics_name'=>$data['logistics_name'],
                    'logistics_number'=>$data['logistics_number']
                ]);
            if($res){
                #确认物流，提醒买家
                return ajax_return('','操作成功','200');
            }else{
                return ajax_return('','操作失败','500');
            }
        }
    }

    public function editTotalPrice()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['order_id']){
                return ajax_return_error('缺少订单id');
            }
            if($data['totalPrice']<0){
                return ajax_return_error('订单总金额不能小于0');
            }
            $order = $this->getModel()->where(['order_id'=>$data['order_id']])->find();
            if(!$order){
                return ajax_return_error('参数异常');
            }
            include_once "WxPaySDK/WxPay.Api.php";
            include_once "WxPaySDK/WxPay.JsApiPay.php";
            include_once 'WxPaySDK/log.php';
            $orderId = \WxPayConfig::MCHID.date("YmdHis");
            $res = $this->getModel()
                ->where(['order_id'=>$data['order_id']])
                ->update(['total_price'=>$data['totalPrice'],'js_api_parameters'=>'','prepay_id'=>'','order_id'=>$orderId]);
           $res1 = Db::name('order_goods')->where(['order_id'=>$data['order_id']])->update(['order_id'=>$orderId]);
            if($res && $res1){
                return ajax_return_adv('修改成功','parent','200');
            }else{
                return ajax_return('','修改失败','200');
            }

        }
    }


    #确认发货
    public  function  sureSend()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['id']){
                return ajax_return_error('缺少参数id');
            }
            $order = Db::name('order') ->where(['order_id'=>$data['id']])->find();
            if($order['pay_status']!=1){
                return ajax_return_error('付款了才可以发货');
            }
            $res = Db::name('order')
                ->where(['order_id'=>$data['id']])
                ->update([
                    'order_status'=>2
                ]);
            if($res){
                #确认物流，提醒买家
                return ajax_return('','操作成功','200');
            }else{
                return ajax_return('','操作失败','500');
            }
        }

    }


    # 微信退款
    public function refund()
    {
        if($this->request->isAjax()){
            include_once 'WxPaySDK/WxPay.Api.php';
            $data = $this->request->post();
            $order_id = $data['order_id'];
            $result = ['code'=>400,'msg'=>''];
            if( $order_id ){
                $where = array('order_id' => $order_id);
                $order = Db::name('order')
                    ->where([
                        'order_id'=>$order_id,
                        'pay_status'=>1,
                        'order_status'=>['in',[1,2,3]]
                    ])//支付状态//支付成功，和正在处理中的订单
                    ->find();
                $orderGoods =  Db::name('order_goods')->where(['id'=>$data['id']])->find();
                if($orderGoods['is_return']!=1){
                    return ajax_return_error('没有退款单');
                }
                if($orderGoods['return_price']<=0){
                    return ajax_return_error('退款金额不能小于0');
                }
                $merchid = \WxPayConfig::MCHID;
                if( !$order ){
                    $result['code'] = 401;
                    $result['msg'] = '没有退款订单';
                    file_put_contents("wx_refund_error.log",print_r($result, true)."\r", 8);
                   return ajax_return_error('没有退款订单');
                }
                $input = new \WxPayRefund();
                $input->SetOut_trade_no($order['order_id']);   //自己的订单号
                //$input->SetTransaction_id($order['transaction_id']);  //微信官方生成的订单流水号，在支付成功中有返回
                $input->SetOut_refund_no( uniqid().time() );   //退款单号
                $input->SetTotal_fee(  $orderGoods['return_price']*100);   //订单标价金额，单位为分
                $input->SetRefund_fee(  $orderGoods['return_price']*100 );  //退款总金额，订单总金额，单位为分，只能为整数
                $input->SetOp_user_id($merchid);
                $res = \WxPayApi::refund($input);
//                dump($input);
//                dump($res);die;
                //退款操作
                if( $res['return_code'] == 'SUCCESS' ){
                    file_put_contents("wx_refund_success.log",print_r($res, true)."\r", 8);
                    //修改订单状态
                    $updateres = Db::name('order')->where( [ 'order_id'=>$order_id ] )->update(['order_status'=>7]); //2表示退款成功
                    Db::name('order_goods')->where( [ 'id'=>$data['id'] ] )->update(['is_return'=>2]);
                    $result['code'] = 200;
                    $result['msg'] = '退款成功';
                    return ajax_return('','退款成功');
                }else{
                    file_put_contents("wx_refund_error.log",$res."\r", 8);
                    $result['code'] = 402;
                    $result['msg'] = '退款异常请联系客服人员';
                    return ajax_return('','退款异常请联系客服人员');
                }
            }else{
                $result['code'] = 404;
                $result['msg'] = '订单号不存在';
                file_put_contents("wx_refund_error.log",json_encode($result."\r"), 8);
                return ajax_return('','订单号不存在');
            }
        }

    }

}

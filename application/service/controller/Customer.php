<?php
/**
 * 会员中心控制器
 */

namespace app\service\controller;

use think\Db;
use think\Controller;
class Customer extends Controller
{

    /**
     * 会员中心首页
     */
    public function customer()
    {
        //会员信息
        $user_data = $this->userInfo;
        //前一天未签到或签到满15天，continue_day重置为0,并渲染到页面
        if (!$this->isSignYesterday()) {
            $this->userInfo['continuity_day'] = 0;
        } elseif ($this->userInfo['continuity_day'] == 15) {
            $this->userInfo['continuity_day'] = 0;
        }
        $this->assign('userdata', $this->userInfo);

        //会员收藏数量
        $count_collect = Db::name('customer_collect')
            ->join('fy_goods', 'fy_goods.id=fy_customer_collect.goods_id')
            ->where(['fy_customer_collect.uid' => $user_data['id'], 'fy_customer_collect.status' => 1])
            ->count();
        $this->assign('count_collect', $count_collect);

        //会员卡券数量
        $count_lottery = Db::name('lottery_log')
            ->alias('log')
            ->join('lottery lott', 'log.lottery_id=lott.id')
//            ->where(['log.uid' => $user_data['id'], 'log.lottery_num' => ['>', 0], 'lott.isdelete' => 0])
            ->where(['log.openid' => $user_data['openid'], 'log.lottery_num' => ['>', 0], 'lott.isdelete' => 0])
            ->count();
        $this->assign('count_lottery', $count_lottery);

        //会员订单数量
        #代付款
        $count_pay = Db::name('order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order.order_status' => 0, 'fy_order.pay_status' => 0])
            ->count();
        #待发货
        $count_deliver = Db::name('order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order.order_status' => 1, 'fy_order.pay_status' => 1, 'fy_order_goods.is_send' => 0])
            ->count();
        #待收货
        $count_take_delivery = Db::name('order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order.pay_status' => 1, 'fy_order_goods.is_send' => 1])
            ->count();
        #退货退款
        $count_refund = Db::name('order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order_goods.is_return' => 1, 'fy_order.pay_status' => 1])
            ->count();
        #待评价
        $count_evaluate = Db::name('order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order.order_status' => 1, 'fy_order.pay_status' => 1, 'fy_order_goods.is_send' => 2])
            ->count();
        $this->assign('count_pay', $count_pay);
        $this->assign('count_deliver', $count_deliver);
        $this->assign('count_take_delivery', $count_take_delivery);
        $this->assign('count_refund', $count_refund);
        $this->assign('count_evaluate', $count_evaluate);
        $this->view->assign('param', $param = $this->request->param('param'));
        $this->assign('titleName', "会员中心");
        return $this->view->fetch();
    }

    /**
     * 收藏夹列表
     */
    public function collect_list($page = '1', $size = '10')
    {
        if ($this->request->isPost()) {
            //查询用户id
            $uid = $this->userInfo['id'];
            //根据customer.id=collect.uid查询用户收藏的所有商品信息（goods.id=collect.goods_id）
            $list_collect = Db::name('customer_collect')
                ->alias('collect')
                ->join('fy_customer customer', "collect.uid = customer.id  and customer.id=$uid")
                ->join('fy_goods goods', "collect.goods_id = goods.id")
                ->page($page, $size)
                ->where('collect.status', '1')
                ->select();
            //判断用户收藏列表是否为空
            return ajax_return($list_collect, 'OK', 200);
        }
    }

    #获取用户地址列表
    public function getUserAddress()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            if(!$data['sessionkey']){
                return ajax_return('','缺少参数sessionkey',500);
            }
            $page=isset($data['page'])?$data['page']:"1";
            $size=isset($data['size'])?$data['size']:"10";
            $uid = isset($this->userinfo['id'])?$this->userinfo['id']:1;
            $addressList  = Db::name('customer_address')
                ->where('uid',$uid)
                ->page($page,$size)
                ->select();
            return  empty($addressList)?ajax_return('','no data',404):ajax_return($addressList,'ok',200);
        }

    }

    #添加用户地址
    public function addUserAddress()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            if(!$data['sessionkey']){
                return ajax_return('','缺少参数sessionkey',500);
            }
            if(!$data['name'] || !$data['mobile'] || !$data['address'] || !$data['street']){
                return ajax_return('','地址参数缺少，请检查',501);
            }
            $uid = 1;
            $userMaddress = Db::name('customer_address')->where(['status'=>1,'uid'=>$uid])->find();
            $insert['uid'] = $uid;
            $insert['status'] = empty($userMaddress)?1:0;
            $insert['name'] = $data['name'];
            $insert['mobile'] = $data['mobile'];
            $insert['address'] = $data['address'];
            $insert['street'] = $data['street'];
            $insert['create_time'] = time();
            $res = Db::name('customer_address')
                ->where('uid',$uid)
                ->insert($insert);
            return ajax_return('','ok',200);
        }
    }

    #删除用户地址
    public function delUserAddress()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            if(!$data['sessionkey'] || !$data['addressId']) {
                return ajax_return('','缺少必要参数',500);
            }
            $uid = 1;
            $res = Db::name('customer_address')->where(['uid'=>$uid,'id'=>$data['addressId']])->delete();
            return ajax_return('','ok',200);
        }
    }




}
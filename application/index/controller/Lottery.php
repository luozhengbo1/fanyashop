<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Cache;
use think\Session;

Class Lottery extends Mustlogin
{
    protected $userInfo;

    #获取热销商品和其他显示的商品
    public function __construct()
    {
        parent::__construct();
        $this->userInfo = Session::get('wx_user');
        if (empty($this->userInfo['openid'])) {
            $this->redirect(substr(url('Wechat/wxLogin', ['state' => myUrl()]), 0, -5));
        }
    }

    #券集市  取出没有结算，并且没有过期的奖券
    #根据分类id 查找商品 过滤条件：商品有券
    public function market()
    {
        $this->view->assign('titleName', '券集市');
        if($this->request->isAjax()){
            $page = $this->request->param('page');
            $size = $this->request->param('size');
            $goodsClassId = $this->request->param('goodsClassId');
            if($goodsClassId =='all'){
                //dump($goodsClassId);
                $goodsWithLottery = Db::name('goods')
                    ->field('fy_lottery.*,fy_goods.*')
                    ->join('fy_lottery', 'fy_goods.id=fy_lottery.goods_id','left')
                    ->where(['fy_goods.status'=>1,'fy_goods.isdelete'=>'0'])
                    ->page($page,$size)
                    ->select();
            }else{
                //dump($goodsClassId);
                if(!$goodsClassId){
                    return ajax_return_error('缺少参数分类id');
                }
                #查询所有的子分类
                $goodsClassAllChild = getAllChildcateIds($goodsClassId);
                $goodsWithLottery = Db::name('goods')
                    ->field('fy_lottery.*,fy_goods.*')
                    ->join('fy_lottery', 'fy_goods.id=fy_lottery.goods_id','left')
                    ->where(['fy_goods.goods_class_id'=>['in',$goodsClassAllChild],'fy_goods.status'=>1,'fy_goods.isdelete'=>'0'])
                    ->page($page,$size)
                    ->select();
            }
            return ajax_return($goodsWithLottery, '', '200');
            //带有券的商品
           // dump($goodsWithLottery);
        }

      /* $time = time();
       *   $lotteryList = Db::name('Lottery')

            ->where([
                'isdelete' => 0,
                'status' => 1,
                'grant_start_date' => ['<', $time],
                'grant_end_date' => ['>', $time]
            ])
            ->select();*/
//            dump($lotteryList);die;

        /*$this->view->assign('lotteryList', $lotteryList);*/

        return $this->view->fetch('market');

    }
    #券详情
    public function detail()
    {
        $this->assign('titleName', "券详情");
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
            $insert['addtime'] = time();
            $insert['lottery_id'] = $data['id'];
            $insert['status'] = 1;
            $insert['lottery_name'] = $lottery['name'];
            $insert['is_use'] = 0;
            $res = Db::name('lottery')->where(['id' => $data['id']])->update($insert);
            if ($res) {
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
            $user_session = session('wx_user');
            $userdata = Db::table('fy_customer')->field('id')->where('openid', $user_session['openid'])->find();
            //取未使用过的奖券
            if ($status == 0) {
                $lottery_no_use = Db::table('fy_lottery_log')->alias('log')
                    ->field('lott.*,log.uid,log.updatetime,log.is_use,log.status')
                    ->join('fy_lottery lott', 'log.lottery_id=lott.id')
                    ->join('fy_customer custo', 'log.uid=custo.id')
                    ->where('custo.id', $userdata['id'])
                    ->where('log.is_use', $status)
                    ->page($page, $size)
                    ->select();
                if ($lottery_no_use) {
                    return ajax_return($lottery_no_use, 'ok', 200);
                } else {
                    return ajax_return('', 'no data', 204);
                }
                //取使用过的奖券
            } elseif ($status == 1) {
                $lottery_use = Db::table('fy_lottery_log')->alias('log')
                    ->field('lott.*,log.uid,log.updatetime,log.is_use,log.status')
                    ->join('fy_lottery lott', 'log.lottery_id=lott.id')
                    ->join('fy_customer custo', 'log.uid=custo.id')
                    ->where('custo.id', $userdata['id'])
                    ->where('log.is_use', $status)
                    ->page($page, $size)
                    ->select();
                if ($lottery_use) {
                    return ajax_return($lottery_use, 'ok', 200);
                } else {
                    return ajax_return('', 'no data', 204);
                }
            }
        } else {
            $this->assign('titleName', "卡券中心");
            return $this->view->fetch('mycardVoucher');
        }
    }
}

<?php

namespace app\index\controller;

use think\Cache;
use think\Controller;
use think\Db;
use think\Hook;
use think\Session;

class Index extends Mustlogin
{
    public function index()
    {
        $this->userInfo['uid'] = isset($this->userInfo['id'])?$this->userInfo['id']:'';
        Hook::exec('app\\index\\behavior\\LoginLog', 'run',  $this->userInfo);
        #获取轮播图数据
        $getSildeShow = Cache::get('getSildeShow');
        if(!$getSildeShow){
            $sildeShow = new  Sildeshow($num = 6);
            $getSildeShow = $sildeShow->getSildeShow();
            Cache::set('getSildeShow',$getSildeShow,60*30);
        }
        $this->view->assign('sildeShow', $getSildeShow);
        #功能模块
        $getModular = Cache::get('getModular');
        if(!$getModular){
            $modular = new Modular($num = 5);
            $getModular = $modular->getModular();
            Cache::set('getModular',$getModular,60*30);
        }
        $this->view->assign('modular', $getModular);
        $this->view->assign('titleName', "泛亚商城");
        return $this->fetch();
    }

    public function message($page = '1', $size = '4')
    {
        $this->assign('titleName', "个人消息 ");
        return $this->view->fetch();
    }
    public function waitDevelop()
    {
        $this->assign('titleName', "等到开发... ");
        return $this->view->fetch('waitDevelop');
    }
    public function newCustomerGiftBag($gift_bag_id=3)
    {
        #查询是否有新人礼包
        $lotteryList=  $this->giftCommon(3);
        return ajax_return($lotteryList,'ok',200);
    }
    public function giftCommon($gift_bag_id=3)
    {
        $giftBagLog = Db::name('gift_bag_log')->where(['openid'=> $this->userInfo['openid'],'status'=>0,'gift_bag_id'=>$gift_bag_id])->find();
        $lotteryList=[];
        if($giftBagLog){#未发放
            $giftBag = Db::name('gift_bag')->where(['id'=>$giftBagLog['gift_bag_id']])->find();
            if( trim($giftBag['lottery_id']) ){
                $lotteryId = explode(',', trim($giftBag['lottery_id']));
                foreach ($lotteryId as  $k=>$vId){
                    $lottery = Db::name('lottery')->where(['id'=>$vId])->find();
                    $lotteryList[$k] =  $lottery ;
                    $insert =[ 'addtime'=>time(),
                        'lottery_id'=>$vId,
                        'lottery_name'=>$lottery['name'],
                        'lottery_num'=>1,
                        'status'=>1,
                        'openid'=>$this->userInfo['openid'],
                        'lottery_info'=>json_encode($lottery)];
                    $lotteryList[$k]['lotteryLog'] =  $insert ;
                    Db::name('lottery_log')->insert($insert);
                }
            }
        }
        $giftBagLog = Db::name('gift_bag_log')->where(['openid'=> $this->userInfo['openid'],'gift_bag_id'=>$gift_bag_id])->update(['status'=>1]);
        return $lotteryList;
    }
    public function birthdayCustomerGiftBag($gift_bag_id=2)
    {
        if($this->request->isAjax()){
            #青铜之上
            if($this->userInfo['experience']>1999){
                $lotteryList = $this->giftCommon(2);
                return ajax_return($lotteryList,'ok',200);
            }
        }
        #不同等级得到不同积分。
    }

    public  function smsSend()
    {
        if($this->request->isAjax()){
            $data = $this->request->isPost();
            $preg = '/^1\d{10}$/';
            if(!preg_match($preg,$data['mobile']) ){
                return ajax_return('','手机号不正确','501');
            }else{
                require './';
            }
        }
    }
    //获取用户地理位置信息
//    public function map()
//    {
//        $ak = 'eiLVsU9AWQphSmig6TxWvodPEaQZ9Lwl';
//        $data = input('get.res/a');
////        $newData = $this->getgps($data['latitude'],$data['longitude'],true);
//        $lat = $data['latitude'];
//        $lng = $data['longitude'];
////        dump($newData);
//        $url = "http://api.map.baidu.com/geocoder/v2/?ak={$ak}&location={$lat},{$lng}&output=json&coordtype=gcj02ll";
////        $url = "http://api.map.baidu.com/geocoder/v2/?ak={$ak}&location={$newData[0]},{$newData[1]}&output=json&coordtype=gcj02ll";
//        $res = file_get_contents($url);
//        //百度地图返回的并不是json,而是字符串,需要自己在做一个处理
//        $res = json_decode($res,true);
//        return json($res);
//    }



}



<?php
namespace app\service\controller;
use think\Controller;
use think\Db;
use think\Cache;

Class Notice extends Controller
{

    #获取所哟普的公告信息
    public  function  getNotice()
    {
        if($this->request->isPost()){
            $data =$this->request->post();
            $page=isset($data['page'])?$data['page']:"1";
            $size=isset($data['size'])?$data['size']:"10";
            $list = Db::name('notice')
                ->field("id,title, FROM_UNIXTIME(create_time,'%Y-%m-%d %H:%i:%S') create_time, FROM_UNIXTIME(update_time,'%Y-%m-%d %H:%i:%S') update_time")
                ->where(['status'=>'10','isdelete'=>'0'])
                ->order('orderby DESC, create_time desc')
                ->page($page,$size)
                ->select();
            $count = Db::name('notice')->where(['status'=>'10','isdelete'=>'0'])->count();
            return  empty($list)?ajax_return('','no data',404):ajax_return($list,'ok',200,['total'=>$count]);
        }

    }
    #详情
    public function detail()
    {
        if($this->request->isPost()){
            $data = $this->request->post('id');
            if(!$data['id']){
                return ajax_return('','缺少参数id',500);
            }
            $notice = Cache::get('notice'.$data['id']);
            if(!$notice){
                $notice =  Db::name('notice')
                    ->field("id,title,FROM_UNIXTIME(create_time,'%Y-%m-%d %H:%i:%S') create_time,FROM_UNIXTIME(update_time,'%Y-%m-%d %H:%i:%S')  update_time,desc,detail,status,orderby,isdelete")
                    ->where(['id'=>$data['id'],'status'=>1,'isdelete'=>'0'])
                    ->find();
                Cache::set('notice'.$data['id'],$notice,2*60*60);
            }
            return  empty($notice)?ajax_return('','no data',404):ajax_return($notice,'ok',200);
        }

    }


}
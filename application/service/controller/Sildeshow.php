<?php
namespace app\service\controller;
use think\Db;
use think\Controller;

class Sildeshow extends Controller
{
    public function getSildeShow()
    {
        if($this->request->isPost()){
            $data =$this->request->post();
            $num=isset($data['num'])?$data['num']:"6";
            $list = Db::name('silde_show')
                ->field("id,pic,name,orderby,FROM_UNIXTIME(create_time,'%Y-%m-%d %H:%i:%S') create_time,FROM_UNIXTIME(update_time,'%Y-%m-%d %H:%i:%S')  update_time,status,url,isdelete")
                -> where(['status'=>1,'isdelete'=>'0'])
                ->order('orderby DESC,create_time desc')
                ->limit($num)
                ->select();
            return  empty($list)?ajax_return('','no data',404):ajax_return($list,'ok',200);
        }
    }


}


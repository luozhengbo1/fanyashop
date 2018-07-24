<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class WxPayRefundLog extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("username")) {
            $map['username'] = ["like", "%" . $this->request->param("username") . "%"];
        }
        if ($this->request->param("type")) {
            $map['type'] = $this->request->param("type");
        }
    }


    
}

<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/8/27
 * Time: 13:39
 */

namespace app\admin\controller;
use think\Controller;

Class Error extends Controller
{
    public function index()
    {
        return $this->page();
    }
    public function page()
    {
        return $this->view->fetch('index/page');
    }

    #空操作
    public function _empty()
    {
        return $this->page();
    }


}
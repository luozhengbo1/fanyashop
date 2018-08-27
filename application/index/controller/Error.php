<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/8/27
 * Time: 10:47
 */


namespace app\index\controller;
use think\Controller;

    Class Error extends Controller
    {
        public function index()
        {
            //根据当前控制器名来判断要执行那个城市的操作
//            $cityName = $request->controller();
            return $this->page();
        }
        public function page()
        {
            return $this->view->fetch('error/page');
        }

        #空操作
        public function _empty()
        {
            //把所有城市的操作解析到city方法
            return $this->page();
        }
    }
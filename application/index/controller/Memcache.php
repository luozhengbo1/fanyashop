<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2019/3/28
 * Time: 14:15
 */

namespace app\index\controller;


class Memcache
{
    protected $memcache;
    public function __construct()
    {
        $this->memcache = new \Memcache();

    }

}
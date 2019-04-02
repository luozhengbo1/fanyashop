<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2019/3/27
 * Time: 11:00
 */
namespace app\index\controller;
use think\Controller;
use think\Cache;
use think\Db;

class Rediscar extends Mustlogin{
    protected  $redis;
    protected static $handler = null;
    protected $options = [
        'host' => '127.0.0.1',
        'port' => 6379,
        'password' => '',
        'select' => 0,
        'timeout' => 0,//关闭时间 0:代表不关闭
        'expire' => 0,
        'persistent' => false,
        'prefix' => '',
    ];
    public function __construct()
    {
        //判断是否有redis 扩展
//        dump(phpinfo());die;
        if(!extension_loaded('redis')){
            throw new \BadFunctionCallException('no support : redis');
        }
        parent::__construct();
        $this->redis = new \Redis;
        $this->redis->connect('127.0.0.1','6379');
    }

    public function index(){

//        dump($this->redis);
//        $key = "cart".$this->userInfo['openid'].'1';
//        $key2 = "cart".$this->userInfo['openid'].'2';
//        dump($this->redis->hget($key,'num'));
//        dump($this->redis->hmget($key2,['num']));
//        $key1 = 'cart:ids:set:'.$this->userInfo['openid'];
//        //获取集合中的成员
//        dump($this->redis->sMembers($key1));
        for ($i=0;$i<20;$i++){
            $this->browse($i);
        }
        $key= 'browse'.$this->userInfo['openid'];
        dump($this->redis->zCount($key,0,20));
    }
    /**
     * 购物车添加
     */
    public function add(){
        //key 的组装
        $data = $this->request->post();
        $data['gid'] = 1;
        $data['num']=10;

        if($data['gid']<=0){
            throw  new \Exception('请提供商品id');
        }
        $goodsDetail = $this->getGoodsDetail($data['gid']);
        $key = 'cart'.$this->userInfo['openid'].$data['gid'];
        //判断该商品是否存在
        $res = $this->redis->exists($key);
        //如果不存在进行创建
        if(!$res){
            //將数量存入对应的商品
            $goodsDetail['num'] =$data['num'];
            //將商品数据存放到redis 中hash
            $this->redis->hmset($key,$goodsDetail);

            $key1 = 'cart:ids:set:'.$this->userInfo['openid'];
            //将商品存放在集合中，是为了更好將用户的购物车的商品遍历出来
            $this->redis->sadd($key1,$data['gid']);
        }else{
            //购物车有对应的商品，只需要添加对应商品的数量。
            $originNum = $this->redis->hget($key,'num');
            //原来的数量上加上用户新加入的数量
            $newNum = $originNum + $data['num'];
            $this->redis->hSet($key,'num',$newNum);

        }

    }

    /**
     * 购物车商品显示
     */
    public function show(){
        //组装key
        $key = "cart:ids:set:".$this->userInfo['openid'];
        //先拿到购物车中的商品id
        $idArr = $this->redis->sMembers($key);
        dump($idArr);
        for($i=0; $i<count($idArr);$i++){
            $k = "cart".$this->userInfo['openid'].$idArr[$i];
            dump($this->redis->exists($k));
            $list[] = $this->redis->hgetall($key);
        }
        dump($list);
    }
    /**
     * @param $gid
     * @return array|false|\PDOStatement|string|\think\Model
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * 获取商品详情
     */
    public function getGoodsDetail($gid){
        return Db::name('goods')
            ->where(['id'=>$gid])
            ->find();
    }

    /**
     * 将浏览记录 用集合 集合去重
     */
    public function browse($gid){
        $key = 'browse'.$this->userInfo['openid'];
        //保留用户浏览的最近10数据
        $this->redis->sAdd($key,$gid);
        if($this->redis->sCard($key)>10){

        }

    }

    /**
     *
     */
    public function search(){

    }
}
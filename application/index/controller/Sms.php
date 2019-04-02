<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2019/3/27
 * Time: 17:36
 */
namespace app\index\controller;
use think\Db;
use think\Request;

class Sms
{
    const URL  = "http://www.dh3t.com/json/sms";
    const ACCOUNT ="dh42081";
    const SIGN = "【泛亚信通】";
    const SUBCODE = "42081";
    public  function __construct()
    {
        define( 'PASSWORD', md5 ( "vi8rkYYp" ) );

    }
    public function registerCheck(){
//        if(Request::instance()->isAjax()){
            $data= Request::instance()->post();
            dump($data);
            if(!preg_match('/^1\d{10}$/',$data['mobile'])){
                return json_encode(['code'=>'500','msg'=>'手机号格式不正确','data'=>'']);
            }
            $res = Db::name('customer')->field('id,mobile')->where(['mobile'=>$data['mobile']])->find();
            if($res){
                return json_encode(['code'=>'500','msg'=>'该手机号已注册','data'=>'']);
            }
            $msgid =uniqid ( rand (), true);
            $check= rand(100000,999999);
            $contet = '您当前的验证码是'.$check;
            $res = $this->sendSms($data['mobile'],$contet,$msgid);
            dump($res);
            //发送成功
            if($res){
                $insert = [
                    'mobile'=>$data['mobile'],
                    'code'=>$check,
                    'send_time'=>date('Y-m-d H:i:s')
                ];
                Db::name('sms')->insert($insert);
            }else{
                //
                $smsData =Db::name('sms')->where(['mobile'=>$data['mobile']])->order('send_time desc')->find();

            }


//        }
    }

    public  function sendSms($mobile,$content,$msgid, $sendtime="" )
    {
        $data = array (
            'self::ACCOUNT' => self::ACCOUNT,
            'password' => PASSWORD,
            'msgid' => $msgid,
            'phones' => $mobile,
            'content' => $content,
            'self::SIGN' => self::SIGN,
            'self::SUBCODE' => self::SUBCODE,
            'sendtime' => $sendtime
        );
        return $this->http_post_json( __FUNCTION__, self::URL . "/Submit", json_encode ( $data ) );
    }

    /**
     * 获取短信状态报告
     *
     */
    function getSmsReport() {
        // 获取短信状态报告数据包json格式：{"self::ACCOUNT":"8528","password":"e717ebfd5271ea4a98bd38653c01113d"}
        $data = array ('self::ACCOUNT' => self::ACCOUNT, 'password' => PASSWORD );
        return $this->http_post_json ( __FUNCTION__, self::URL . "/Report", json_encode ( $data ) );
    }

    /**
     * 获取手机回复的上行短信
     *
     */
    function getSms() {
        // 获取上行数据包json格式：{"self::ACCOUNT":"8528","password":"e717ebfd5271ea4a98bd38653c01113d"}
        $data = array ('self::ACCOUNT' => self::ACCOUNT, 'password' => PASSWORD );
        return $this->http_post_json( __FUNCTION__, self::URL . "/Deliver", json_encode ( $data ) );
    }
    /**
     * PHP发送Json对象数据, 发送HTTP请求
     *
     * @param string $url 请求地址
     * @param array $data 发送数据
     * @return String
     */
    function http_post_json($functionName, $url, $data) {
        $ch = curl_init ( $url );
        curl_setopt ( $ch, CURLOPT_POST, 1 );
        curl_setopt ( $ch, CURLOPT_HEADER, 0 );
        curl_setopt ( $ch, CURLOPT_FRESH_CONNECT, 1 );
        curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt ( $ch, CURLOPT_FORBID_REUSE, 1 );
        curl_setopt ( $ch, CURLOPT_TIMEOUT, 30 );
        curl_setopt ( $ch, CURLOPT_HTTPHEADER, array ('Content-Type: application/json; charset=utf-8', 'Content-Length: ' . strlen ( $data ) ) );
        curl_setopt ( $ch, CURLOPT_POSTFIELDS, $data );
        $ret = curl_exec ( $ch );
        //echo $functionName . " : Request Info : url: " . $url . " ,send data: " . $data . "  \n";
        //echo $functionName . " : Respnse Info : " . $ret . "  \n";
        curl_close ( $ch );
        return $ret;
    }


}
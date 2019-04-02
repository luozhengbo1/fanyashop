<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/10/25
 * Time: 13:27
 */
namespace app\service\controller;
use think\Controller;
use think\Request;
use think\Db;
use think\Cache;
use think\Config;

class Common extends Controller
{
    public function __construct(Request $request = null)
    {
        parent::__construct($request);

    }
    public static function commonSession3rd($session3rd)
    {
        if( !isset($session3rd) || ! $session3rd  ){
            return ajax_return('','缺少session3rd参数','500');
        }
    }
    public static function commonSessionKey($sessionKey)
    {
        if( !isset($sessionKey) || ! $sessionKey  ){
            return ajax_return('','会话已经过期，需要重新登录','500');
        }
    }

    public function getData(){

        dump($this->randomFromDev(16));
    }
//    public function randomFromDev($len) {
//        $fp = @fopen('/dev/urandom','rb');
//        $result = '';
//        if ($fp !== FALSE) {
//            $result .= @fread($fp, $len);
//            @fclose($fp);
//        } else {
//            trigger_error('Can not open /dev/urandom.');
//        }
//        // convert from binary to string
//        $result = base64_encode($result);
//        // remove none url chars
//        $result = strtr($result, '+/', '-_');
//        return substr($result, 0, $len);
//    }
    /**
     * 小程序文件图片上传接口
     */
    public function uploadPicOther()
    {
        $file = $this->request->file('file');
        $path = ROOT_PATH . 'public/tmp/uploads/';
        $info = $file->validate(['size'=>10*1024*1024,'ext'=>'jpg,png,gif,jpeg,pdf,doc,docx,dotx,docm,dotm,dot'])->move($path);
        $a = $info ? 1 : '';
        $data['imgPath'] = $this->request->post('imgPath');
        if (!$a) {
            return ajax_return('',$file->getError(),'500');
        }
        $res = str_ireplace('index.php', '', $this->request->root());
        $data['name'] = $res . 'tmp/uploads/' . $info->getSaveName();
        return ajax_return($data,'上传成功','200');

    }

}
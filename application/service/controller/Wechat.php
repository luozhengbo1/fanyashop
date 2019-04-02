<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/9/27
 * Time: 11:06
 */
    namespace  app\service\controller;

    use think\Config;
    use think\Controller;
    use think\Loader;
    use think\Request;
    use think\Cache;
    use think\Db;
    use think\Session;

    Loader::import('wxBizDataCrypt',EXTEND_PATH.'/PHP/','.php');
//    Loader::import('errorCode',EXTEND_PATH.'/PHP/','.php');
    class Wechat extends Controller
    {
        protected $appid;
        protected $secret;
        protected $sessionKey;
        public function __construct(Request $request = null)
        {
            parent::__construct($request);
            $this->appid = Config::get('x_appid');
            $this->secret = Config::get('x_secret');

        }

        #z微信登陆
        public function getWxLogin()
        {
            if($this->request->post()){
                $code = $this->request->post('code');
                $encryptedData   =   $this->request->post('encryptedData');
                $encryptedData = urldecode($encryptedData);
                $rawData   =   $this->request->post('rawData');
                $signature   =   $this->request->post('signature');
                $iv   =   $this->request->post('iv');
                $url = "https://api.weixin.qq.com/sns/jscode2session?appid={$this->appid}&secret={$this->secret}&js_code={$code}&grant_type=authorization_code";
                $res = file_get_contents($url);
//                if ($res['code'] !== 200 || !isset($res['result']) ) {
//                    return ['code'=>\ErrorCode::$RequestTokenFailed, 'message'=>'请求Token失败'];
//                }
                $reqData = json_decode($res, true);
                if (!isset($reqData['session_key'])) {
                    return json_encode(['code'=>\ErrorCode::$RequestTokenFailed, 'message'=>'请求Token失败']);
                }
                $sessionKey = $reqData['session_key'];
                /**
                 * 5.server计算signature, 并与小程序传入的signature比较, 校验signature的合法性, 不匹配则返回signature不匹配的错误. 不匹配的场景可判断为恶意请求, 可以不返回.
                 * 通过调用接口（如 wx.getUserInfo）获取敏感数据时，接口会同时返回 rawData、signature，其中 signature = sha1( rawData + session_key )
                 * 将 signature、rawData、以及用户登录态发送给开发者服务器，开发者在数据库中找到该用户对应的 session-key
                 * ，使用相同的算法计算出签名 signature2 ，比对 signature 与 signature2 即可校验数据的可信度。
                 */
//                $signature2 = sha1($rawData.$sessionKey);
                $signature2 = sha1(htmlspecialchars_decode($rawData).$sessionKey);
//                dump($signature2);die;
                if ($signature2 !== $signature) return json_encode(['code'=>\ErrorCode::$SignNotMatch, 'message'=>'签名不匹配']);
                /**
                 *
                 * 6.使用第4步返回的session_key解密encryptData, 将解得的信息与rawData中信息进行比较, 需要完全匹配,
                 * 解得的信息中也包括openid, 也需要与第4步返回的openid匹配. 解密失败或不匹配应该返回客户相应错误.
                 * （使用官方提供的方法即可）
                 */
                $pc = new \WXBizDataCrypt($this->appid, $sessionKey);
                $errCode = $pc->decryptData($encryptedData, $iv, $data );
                if ($errCode !== 0) {
                    return json_encode(['code'=>\ErrorCode::$EncryptDataNotMatch, 'message'=>'解密信息错误']);
                }
                /**
                 * 7.生成第三方3rd_session，用于第三方服务器和小程序之间做登录态校验。为了保证安全性，3rd_session应该满足：
                 * a.长度足够长。建议有2^128种组合，即长度为16B
                 * b.避免使用srand（当前时间）然后rand()的方法，而是采用操作系统提供的真正随机数机制，比如Linux下面读取/dev/urandom设备
                 * c.设置一定有效时间，对于过期的3rd_session视为不合法
                 *
                 * 以 $session3rd 为key，sessionKey+openId为value，写入memcached
                 */
                $data = json_decode($data, true);
                $session3rd = $this->randomFromDev(16);
                $data['session3rd'] = $session3rd;
//                Db::name('session_key')->insert(['session3rd'=>$session3rd, 'sessionkey'=>$sessionKey, 'session3rd_openid'=>$data['openId'],]);

                Cache::set($session3rd,  $sessionKey);
                Cache::set($session3rd.'openid',  $data['openId']);
                #检验登陆成功 没有注册的就注册，注册的更新
                $getUser  = Db::name('customer')->where(['openid'=>$data['openId']])->find();
                $insert =[];
                $insert['openid'] = $data['openId'];
                $insert['nickname'] = $data['nickName'];
                $insert['headimgurl'] = $data['avatarUrl'];
                $insert['status'] = 1;
                $insert['sex'] =$data['gender'];
                $insert['update_time'] = time();
                $insert['language'] = 1;
                $insert['province'] = $data['province'];
                $insert['city'] = $data['city'];
                $insert['country'] = $data['country'];
                $insert['is_from'] = 1;#来自小程序
                if(!$getUser){
                    $insert['create_time'] = time();
                    Db::name('customer')->insert($insert);
                }else{
                    Db::name('customer')->where(['openid'=>$data['openId']])->update($insert);
                }
                return json_encode(['data'=>$data,'msg'=>'ok','code'=>200]);
            }

        }

        public function randomFromDev($len) {
            $fp = @fopen('/dev/urandom','rb');
            $result = '';
            if ($fp !== FALSE) {
                $result .= @fread($fp, $len);
                @fclose($fp);
            } else {
                trigger_error('Can not open /dev/urandom.');
            }
            // convert from binary to string
            $result = base64_encode($result);
            // remove none url chars
            $result = strtr($result, '+/', '-_');
            return substr($result, 0, $len);
        }

    }
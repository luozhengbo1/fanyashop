//微信config配置信息注入
wx.config({
    debug : true,
    appId : appId,
    timestamp :timestamp ,
    nonceStr : nonceStr,
    signature :signature,
    jsApiList: [
        'checkJsApi',
        'openLocation',
        'getLocation',
    ]
});

wx.checkJsApi({
    jsApiList: [
        'getLocation'
    ],
    success: function (res) {
        // alert(JSON.stringify(res));
        // alert(JSON.stringify(res.checkResult.getLocation));
        if (res.checkResult.getLocation == false) {
            alert('你的微信版本太低，不支持微信JS接口，请升级到最新的微信版本！');
            return;
        }
    }
});

wx.ready(function () {

    //自动执行的
    wx.checkJsApi({
        jsApiList: [
            'getLocation',
        ],
        success: function (res) {
        }
    });

    //如果不支持则不会执行
    wx.getLocation({
        success: function (res) {
            // 用户同意后,将获取的位置基础信息(经度和纬度信息)请求到控制器
            //控制器中利用百度的api请求返回地理位置信息数据
            $.get("/index/index/map",{ 'res':res },function(data){
                if(data.status == 0){
                    $('#wx_location').html(data.result.addressComponent.city);
                }else{
                    $('#wx_location').html('未知城市');
                }
            });
        },
        cancel: function (res) {
            alert('用户拒绝授权获取地理位置');
        }
    });

});

wx.error(function (res) {
    alert(res.errMsg);
});


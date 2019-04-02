
var cfg = {
    debug : true,
    appId : appId,
    timestamp :timestamp ,
    nonceStr : nonceStr,
    signature :signature,
    jsApiList : ['onMenuShareTimeline', 'onMenuShareAppMessage', 'onMenuShareQQ', 'onMenuShareWeibo','onMenuShareQZone',
        'checkJsApi',
        'openLocation',
        'getLocation',]
}

wx.config(cfg);
//微信地址获取
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
    wx.onMenuShareAppMessage({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {
            // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回
        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {

        }
    });
    wx.onMenuShareTimeline({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {
            // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回

        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {

        }
    });
    wx.onMenuShareQQ({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接 // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {

        },
        complete: function (res) {

        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {

        }
    });
    wx.onMenuShareWeibo({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {
        },
        complete: function (res) {

        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {

        }
    });
    wx.onMenuShareQZone({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {
        },
        complete: function (res) {

        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {
        }
    });
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
                    console.log(data.result.addressComponent.city)
                    console.log(data.result.addressComponent.city)
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

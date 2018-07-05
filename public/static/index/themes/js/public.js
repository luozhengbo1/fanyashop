
function formData(id){
    var obj = {};
    var item = $("#"+id+" input"+",#"+id+" select"+",#"+id+" textarea");
    var type = '';
    var group = [];
    item.each(function(i){
        type = $(this).attr("type");
        if(type=='radio'){
            obj[$(this).attr("name")] = $("input[name="+$(this).attr("name")+"]:checked").val();
        }else if(type=='checkbox'){
            if($.inArray($(this).attr("name"), group)>= 0){
                $(this).is(":checked") ? obj[$(this).attr("name")] += $(this).val()+',' : '';
            }else{
                group.push($(this).attr("name"));
                $(this).is(":checked") ? obj[$(this).attr("name")] = ($(this).val()+',') :  obj[$(this).attr("name")] = '';
            }
        }else{
            obj[$(this).attr("name")] = $(this).val();
        }
    })

    if(group.length > 0){
        $.each(group,function(i,e){
            obj[e] = obj[e].substr(0,obj[e].length-1);
        })
    }

    return obj;
}
function formEmptyValid(id) {
    var obj = {};
    var item = $("#"+id+" input"+",#"+id+" select"+",#"+id+" textarea");
    var type = '';
    var flag= true
    item.each(function(i,ele){
        type = $(this).attr("type");
        if(type){
            var value = $(ele).val();
            if(value==""){
                $(ele).focus();
                layer_msg($(ele).data("text"))
                flag = false;
                return flag;
            }
        }
    });
    return flag;
}

/*使用该js需要引入jquery， Validform，layer手机提示*/
/*手机版弹出提示框*/
function layer_msg(msg){
    layer.open({
        content: msg
        ,skin: 'msg'
        ,time: 2 //2秒后自动关闭
    });
}

/*
*弹出提示信息后跳转
*/
function alertMsgUrl(msg,url,time){
	alertMsg(msg,time);
	setTimeout(function(){
		if(url){
			location.href=url;
		}
	},2000);
}

/*
*提交数据 
* obj Validform表单对象，post_url
*/

function submitForm(id,post_url,return_url){
	$('#'+id).Validform({
		tiptype:function(msg,o){
			if(o.type != 2){
				layer_msg(msg);
			}
		},
		beforeSubmit:function(curform){
            $.ajax({
                url:post_url,
                type:'post',
                data:formData(id),
                dataType:'json',
                success: function(data){
                    layer_msg(data.msg);
                    if(data.code ==200){
                        setTimeout(function(){
                            location.href=return_url;
                        },1500);
                    }
                }
            })
			return false;
		},
	
	});
}



/*post提交函数*/
function postData(postUrl,jsonData){
	if(jsonData==undefined){
		$.post(postUrl,function(res){
			alertMsg(res.msg);
			 setTimeout(function(){
				if(res.url){
					location.href=res.url;
				}
			},1500);
		},"json");
	}else{
		$.post(postUrl,jsonData,function(res){
			alertMsg(res.msg);
			 setTimeout(function(){
				if(res.url){
					location.href=res.url;
				}
			},1500);
		},"json");
	}
}


/**
 * 毫秒转换为日期格式
 * 用法：new Date(itme[i].regTime).Format("yyyy-MM-dd hh:mm:ss");
 * @param fmt
 * @returns {*}
 * @constructor
 */
Date.prototype.Format = function (fmt) { //author: meizz
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "h+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};
//tab导航
function navTab(){
    var $tabNavItem= $('.tab-nav .tab-nav-item')
    $tabNavItem.click(function () {
        $tabNavItem.removeClass('active');
        $(this).addClass('active');
        var index = $tabNavItem.index(this),tranlateWidth = index*100;
        $('.tab-content').css('transform','translate3d(-'+tranlateWidth+'%, 0px, 0px)');
    })
}
//swiper   banner滚动
function bannerSwiper(_class) {
    new Swiper('.'+_class, {
       /* autoplay: {
           // delay: 6000,
            stopOnLastSlide: false,
            disableOnInteraction: false,
        },*/
        pagination: {
            el: '.swiper-pagination',
            bulletElement : 'li',
        },
    });
}
//加减方法
/**
 *
 * @param watchFun  数据改变时执行的方法 可以不写
 */
var countCalculate = function (watchFun) {
    this.init(watchFun);
};
countCalculate.prototype.init =function () {
    var $countWrap =  $('.count-wrap'),
        minus = $countWrap.find('.minus'),
        add = $countWrap.find('.add'),
        sumInput= $countWrap.find('.sumInput');
    minus.click(function () {
        var input = $(this).parents('.count-wrap').find('.sumInput');
        if(input.val() ==1 || input.val() <1){
            layer_msg('数据最小为1');
            input.val(1);
        }else{
            input.val(parseInt(input.val())-1);
        }
        if(watchFun){
            watchFun();
        }
    });
    add.click(function () {
        var input = $(this).parents('.count-wrap').find('.sumInput');
        input.val(parseInt(input.val())+1);
        if(watchFun){
            watchFun();
        }
    });
    sumInput.keydown(function(){
        console.log('123ss'.replace(/D/g,''))
        $(this).val( ($(this).val()).replace(/D/g,''))
        if($(this).val()<1){
            $(this).val(1)
        }

    })
}


//加载函数
//
function layerLoad(){
    var html ='<div class="f14"><span class="loading-gif"></span><p>加载中...</p></div>'
    var loading = layer.open({
         content: html
        ,skin: 'msg'
        ,time: 200000 //2秒后自动关闭
    });
    return loading;
}

/*数字跳动*/
function countUpFun(id){
    var target =$("#"+id).attr("data-value");
    target = target.replace( /,/g, '');
    var options = {
        useEasing : true,
        useGrouping : true,
        separator : ',',
        // decimal : '.',
    };
    new CountUp(id, 0.00,target, 2, 5, options).start();//为理财人赚取收益
}

/**
 *
 * @param $target 导航的tab对象
 * @param fun 点击导航执行的函数
 */
function tabSwitch($target,complete) {
    $target.each(function (index,ele) {
        $(ele).click(function () {
            console.log('click')
            $target.removeClass('active')
            $(ele).addClass('active');
            if(complete){
                complete()
            }
        });
    })
    var firstLi = $target[0];
    firstLi.click();
}

function notEmpty(val) {
    if(val==undefined || val =='undefined' || val =='null' || val ==null){
        return ''
    }else return val;
}

/**
 *
 * @param url 请求地址
 * @param json 拼接参数jsoN
 * @returns {*}
 */
function urlConnect(url,json) {
    var result = url;
    result = result.split('.html')[0];
    if(json){
        for (var key in json){
            result +="\\"+key+"\\"+json[key];
        }
    }
    result = result+'.html';
    return result;
}

/**
 *
 * @param type 0 删除
 * @param id
 */
var request_flag = {
    del:true,
}
function req_opt(type,id){
    if(request_flag.del){//请求完成后才能进行下一次请求
        request_flag.del = false;
        layerLoad();
        if(type==0){
            $.ajax({
                url:url.dele,
                type:'post',
                data:{id:id},
                dataType:'json',
                success: function(data){
                    layer_msg(data.msg);
                    if(data.code ==200){
                        setTimeout(function(){
                            location.href=url.list;
                            request_flag.del = true;
                        },1500);
                    }
                }
            })
        }
    }

}
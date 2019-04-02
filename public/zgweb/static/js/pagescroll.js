$(function() {
	var mainWit = $(window).width();
	var mainHit = $(window).height();
	var mainTop = $('.mainTop'),
		scrollBar = $('.scrollBar .banner ul li .imgTimes'),
		indexBack = $('.index-back-box'),
		heaDer = $('header'),
		mouseClick = $('.index-back-box .sub-mouse'),
		navBar = $('.quanmei-navBar'),
		closeBar = $('.quanmei-fixed-menu ul li.index-hrefs aside .close-bar'),
		munPhone = $('.quanmei-fixed-menu .sub-menu-phone'),
		bodsBg = $('.quanmei-body-bg'),
		fixedBar = $('.quanmei-fixed-menu'),
		worKss = $('.quanmei-works'),
		worKside = $('.works-slide'),
		collEction = $('.quanmei-collection'),
		desGin = $('.quanmei-about'),
		VIDEO = $('#video-bgs'),
		FOOTER = $('footer'),
		bodBox = $('.quanmei-body-box'),
		Gotop = $('.GoTop'),
		Mytop = $('.myTop a'),
		COLLBGS = $('.collbgs'),
		comnum = $('.quanmei-collection .slider-waper'),
		artsrs = $('.quanmei-collection .slider-waper ul li>article');
		
	if(mainWit > 768){
		$('.about_box1').height(mainHit);
	}
	$('.about_box1 .box').css('margin-top','-'+$('.about_box1 .box').height()/2+'px');
	
	mainTop.width(mainWit).height(mainHit);
	worKss.width(mainWit).height($('.quanmei-works .words-slide ul').height()+100);
	collEction.width(mainWit).height(mainHit);
	desGin.width(mainWit).height(mainHit);
	var wi = desGin.width();
	var hi = desGin.height();
	VIDEO.width(wi).height(hi);
	var FTH = FOOTER.height();
	var goYx = $('.goYx').height()
//	goYx <= 0 ? goYx = 0 : goYx = goYx;
//	console.log(goYx +' '+ FTH)
	bodBox.css({
		//'margin-bottom': FTH - goYx + 50 + 'px'
	});
	scrollBar.width(mainWit);
	COLLBGS.width(mainWit).height(hi * 0.6);
	var comw = comnum.width();
	var comH = comnum.height();
	artsrs.width(comw).height(comH);
	var sdw = worKss.width();
	var sdh = worKss.height();
	worKside.width(sdw).height(sdh);
	if(mainWit * 1080 >= mainHit * 1920) {
		scrollBar.css({
			'background-size': '100% auto'
		})
	} else {
		scrollBar.css({
			'background-size': 'auto 100%'
		})
	};
	mouseClick.click(function() {
		$('html,body').animate({
			scrollTop: mainHit
		}, 500)
	});
	navBar.hover(function() {
		fixedBar.find('.sub-menu-phone').css({
			'width': '555px'
		})
	}, function() {
		fixedBar.find('.sub-menu-phone').css({
			'width': '530px'
		})
	});
	navBar.click(function() {
		$(this).removeClass('visble');
		fixedBar.addClass('active');
		bodsBg.addClass('active');
		munPhone.addClass('active')
	});
	closeBar.click(function() {
		fixedBar.removeClass('active');
		bodsBg.removeClass('active');
		munPhone.removeClass('active');
		navBar.addClass('visble')
	});
	bodsBg.click(function() {
		$(this).removeClass('active');
		fixedBar.removeClass('active');
		munPhone.removeClass('active');
		navBar.addClass('visble')
	});
	$('.close_btn').click(function() {
		fixedBar.removeClass('active');
		bodsBg.removeClass('active');
		munPhone.removeClass('active');
		navBar.addClass('visble')
	});
	$(window).resize(function() {
		$('.oneByOne_item').css('margin-top','-'+$('.oneByOne_item').height()/2+'px');
		var mainWit = $(window).width();
		var mainHit = $(window).height();
		var mainTop = $('.mainTop'),
			scrollBar = $('.scrollBar .banner ul li .imgTimes'),
			indexBack = $('.index-back-box'),
			heaDer = $('header'),
			worKss = $('.quanmei-works'),
			worKside = $('.works-slide'),
			collection = $('.quanmei-collection'),
			desGin = $('.quanmei-about'),
			VIDEO = $('#video-bgs'),
			FOOTER = $('footer'),
			bodBox = $('.quanmei-body-box'),
			COLLBGS = $('.collbgs'),
			comnum = $('.quanmei-collection .slider-waper'),
			artsrs = $('.quanmei-collection .slider-waper ul li > article');
		
		if(mainWit > 768){
			$('.about_box1').height(mainHit);
		}
		$('.about_box1 .box').css('margin-top','-'+$('.about_box1 .box').height()/2+'px');
		
		mainTop.width(mainWit).height(mainHit);
		worKss.width(mainWit).height($('.quanmei-works .words-slide ul').height()+100);
		collEction.width(mainWit).height(mainHit);
		desGin.width(mainWit).height(mainHit);
		var wi = desGin.width();
		var hi = desGin.height();
		VIDEO.width(wi).height(hi);
		var FTH = FOOTER.height();
		bodBox.css({
			//'margin-bottom': FTH + 'px'
		});
		scrollBar.width(mainWit);
		COLLBGS.width(mainWit).height(mainHit / 2);
		var comw = comnum.width();
		var comH = comnum.height();
		artsrs.width(comw).height(comH);
		var sdw = worKss.width();
		var sdh = worKss.height();
		worKside.width(sdw).height(sdh);
		if(mainWit * 1080 >= mainHit * 1920) {
			scrollBar.css({
				'background-size': '100% auto'
			})
		} else {
			scrollBar.css({
				'background-size': 'auto 100%'
			})
		}
	});
	eval(function(p, a, c, k, e, r) {
		e = function(c) {
			return c.toString(a)
		};
		if(!''.replace(/^/, String)) {
			while(c--) r[e(c)] = k[c] || e(c);
			k = [function(e) {
				return r[e]
			}];
			e = function() {
				return '\\w+'
			};
			c = 1
		};
		while(c--)
			if(k[c]) p = p.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c]);
		return p
	}('$(f).j(n(){c a=$(f).q();c b=$(\'m\').l();6(a>k){e.3(\'1\')}7{e.4(\'1\')};6(a>g/2){d.3(\'1\');5.3(\'8\');h.3(\'1\');9.3(\'1\')}7{d.4(\'1\');5.4(\'8\');h.4(\'1\');9.4(\'1\')};6(b-a-g+o+p==0){5.3(\'i\')}7{5.4(\'i\')}});', 27, 27, '|active||addClass|removeClass|navBar|if|else|visble|Mytop|||var|indexBack|heaDer|window|mainHit|Gotop|Bom|scroll|100|height|body|function|FTH|50|scrollTop'.split('|'), 0, {}))
	Gotop.click(function() {
		$('html,body').stop().animate({
			scrollTop: '0px'
		}, 800);
	});
});
	
$(function() {
	var a = $(window).height();
	var h = $(".quanmei-brand").offset().top,
		k = $(".IndexList").offset().top;
	$(window).scroll(function() {
		var e = $(window).scrollTop();
		if(e >= k - a) {
			b()
		} else {
			c()
		}
	});

	function b() {
		$('.nub').eq(0).XNumber(11, true);
		$('.nub').eq(1).XNumber(1200, true);
		$('.nub').eq(2).XNumber(200, true)
	};

	function c() {
		$('.nub').eq(0).XNumber(11, true);
		$('.nub').eq(1).XNumber(1200, true);
		$('.nub').eq(2).XNumber(200, true)
	}
});	
//number
(function(d) {
	d.fn.XNumber = function(e, c) {
		var g = String(e),
			f = g.length,
			b = d(this);
		if(!b.html()) {
			for(var h = ["NumGe", "NumShi", "NumBai", "NumQian", "NumWan"], k = "", l = "", m = 0; 2 > m; m++)
				for(var a = 0; 10 > a; a++) k = k + '<div class="Txt">' + a + "</div>";
			for(a = 0; a < f; a++) l = l + '<div class="' + h[f - 1 - a] + '">' + k + "</div>";
			b.append('<div class="NumContent">' + l + "</div>")
		}
		$height = b.find(".Txt").height();
		h = [];
		for(a = 0; a < f; a++) h[a] = g.substring(a, a + 1);
		if(!0 === c)
			for(b.children(".NumContent").removeClass("active"), a = 0; a < f; a++) b.children(".NumContent").children().eq(a).css({
				transform: "translateY(" +
					-(parseInt(h[a]) + 10) * $height + "px)",
				opacity: "1"
			});
		else if(!1 === c) b.children(".NumContent").addClass("active"), b.children(".NumContent").children().css({
			transform: "translateY(0px)",
			opacity: "0"
		});
		else return !1
	}
})(jQuery);
$(function() {
	function d() {
		if(c == e.length) return !1;
		if($(e[c]).val() != undefined){
			var f = $(e[c]).offset().top,
			b = $(window).scrollTop() + g - 300;
		
			if(f < b)
				if($(e[c]).addClass("active"), c++, c < e.length) d();
				else return !1;
			else return !1
		}else{
			return false;
		}
		
	}
	var e = ".quanmei-waperTit;.IndexList;.adsf".split(";"),
		c =
		0,
		g = window.screen.availHeight;
//	var liBottomTop = $('.liBottomTop').offset().top;
	var bodyHeight = $('body').outerHeight(true)-1;
	$(window).scroll(function() {
		d();
		if(bodyHeight<$(window).scrollTop()+g){
			$('.liBottom').addClass('active');
		}else{
			$('.liBottom').removeClass('active');
		}
	});
	d();
});

$(function(){
	$(".dianzan").click(function(){
		alert(123);
	});
});

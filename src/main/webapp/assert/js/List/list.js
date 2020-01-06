// 鼠标放上变色
$(".screen_logo_logo").on("mouseenter", ".logo", function() {
	$(this).css("background", "rgba(0,0,0,.8)");
	$(this).find(".txt").css("display", "block");
})

$(".screen_logo_logo").on("mouseleave", ".logo", function() {
	$(this).css("background", "rgba(255,255,255)")
	$(this).find(".txt").css("display", "none");
})
// $(".screen_logo_logo .logo").mouseenter(function() {
// 	$(this).css("background", "rgba(0,0,0,.8)");
// 	$(this).find(".txt").css("display", "block");
// })
// $(".screen_logo_logo .logo").mouseleave(function() {
// 	$(this).css("background", "rgba(255,255,255)")
// 	$(this).find(".txt").css("display", "none");
// })
// 


// 更多选项
$(".screen_option .screen_more").mouseenter(function() {
	$(".screen_option").css("border-bottom", "1px solid red");
	$(".screen_more").css("border", "1px solid red");
	$(".screen_more").css("border-top", "2px solid #fff");
})
$(".screen_option .screen_more").mouseleave(function() {
	$(".screen_option").css("border-bottom", "1px solid #aaa");
	$(".screen_more").css("border", "1px solid #aaa");
	$(".screen_more").css("border-top", "2px solid #fff");
})
// 点击更多选项
$(".screen_option .screen_more").click(function() {
	a = $('.screen_option .screen_more span').text();
	var height3 = $(".screen_option .container").height();
	if (a == "更多选项") {
		$(".screen_option .container").css("height", height3 + 302);
		// console.log(height);

		// $(".screen_option .container").css("height", "490px");
		var top = $('.screen_more').position().top;
		$(".screen_more").css("top", top + 301);
		// $(".screen_option .screen_more").css("top", "490px");
		$(".screen_option .screen_more span").text("精简选项");
		$(this).find(".icon_flag").css("display", "none");
		$(this).find(".icon_up").css("display", "inline-block")

	}
	if (a == "精简选项") {
		$(".screen_option .container").css("height", height3 - 302);
		// $(".screen_option .container").css("height", "188px");
		var top = $('.screen_more').position().top;
		$(".screen_more").css("top", top - 301);
		// $(".screen_option .screen_more").css("top", "189px");
		$(".screen_option .screen_more span").text("更多选项");
		$(this).find(".icon_flag").css("display", "inline-block");
		$(this).find(".icon_up").css("display", "none")
	}

})

// 点击选项
// 多选
$(".screen_option").on("click", ".screen_option_line_ri", function() {
	// $(".screen_option_line_ri span").click(function() {

	var height = $(this).parents(".screen_option_line").height();
	var height1 = $(this).parents(".screen_option").find(".container").height();
	var top = $('.screen_more').position().top;

	$(this).parents(".screen_option_line").css("height", height + 39);
	$(".screen_option .container").css("height", height1 + 39);
	$(".screen_more").css("top", top + 39);
	$(this).siblings(".screen_option_line_con_x").css("display", "block");
	// console.log($(this));

})
// 点击取消
$(".screen_option").on("click", ".screen_option_line_ri_canc", function() {
	var height = $(this).parents(".screen_option_line").height();
	var height1 = $(this).parents(".screen_option").find(".container").height();

	$(this).parents(".screen_option_line").css("height", height - 39);
	$(this).parents(".screen_option").find(".container").css("height", height1 - 39);
	var top = $('.screen_more').position().top;

	// $(this).parents(".screen_option_line").css("height", "33px");
	// $(this).parents(".screen_option").find(".container").css("height", "188px");
	$(".screen_more").css("top", top - 39);
	// $(".screen_more").css("top", "189px");

	$(this).parents(".screen_option_line_con_x").css("display", "none");
	$(this).parents(".screen_option_line_con_x").siblings(".screen_option_line_con").find("span").removeClass(
		"activeone");
	$(this).parents(".screen_option_line_con_x").siblings(".screen_option_line_con").find("i").css("display", "none");


})
$(".screen_option_line_con span").click(function() {
	// 判断多选是否存在
	var hide = $(".screen_option_line_con_x").is(":visible");

	if (hide) {
		//判断是否有active
		var flag = $(this).hasClass("activeone");
		//移除所有active
		// $(this).parent("li").siblings("li").find("span").removeClass("activeone");
		// $(this).parent("li").siblings("li").find("span").find("i").css("display", "none");
		if (flag) {
			$(this).removeClass("activeone");
			$(this).find("i").css("display", "none")
		} else {
			$(this).addClass("activeone");
			$(this).find("i").css("display", "inline-block")
		}
	} else {
		//判断是否有active
		var flag = $(this).hasClass("activeone");
		$(this).parent("li").siblings("li").find("span").removeClass("activeone");
		$(this).parent("li").siblings("li").find("span").find("i").css("display", "none");
		if (flag) {
			$(this).removeClass("activeone");
			$(this).find("i").css("display", "none")
		} else {
			$(this).addClass("activeone");
			$(this).find("i").css("display", "inline-block")
		}
	}
});


// 更多,品牌logo
$(".screen_logo").on("click", ".screen_logo_txt_mulg", function() {
	var $int = $('<input placeholder="搜索品牌名称" type="text" name="" id="" value="" class="screen_logo_logo_int"/>');
	var $div = $('<div class="logo fl"><img src="img/List/gucci_144X60.png"><div class="txt">GUCCI</div></div>');
	var $div1 = $('<div class="logo fl"><img src="img/List/guerlain_144X60.png"><div class="txt">GUCCI</div></div>');

	// 名称变换
	a = $('.screen_logo_txt_mulg a').text();

	if (a == "更多") {
		$(".screen_logo_txt_mulg a").text("收起");
		$(".screen_logo_logo").prepend($int);
		$(".screen_logo_logo").append($div);
		$(".screen_logo_logo").append($div1);
	}
	if (a == "收起") {
		$(".screen_logo_txt_mulg a").text("更多");
		//删除
		// console.log($(this));
		$(this).parents(".screen_logo_txt").siblings(".screen_logo_logo").find(".screen_logo_logo_int").remove();
		$(this).parents(".screen_logo_txt").siblings(".screen_logo_logo").find(".logo:eq(15)").remove();
		$(this).parents(".screen_logo_txt").siblings(".screen_logo_logo").find(".logo:eq(14)").remove();
	}
})

//滚动事件
var maxTop = $(".screen_commod_up").offset().top;
$(window).scroll(function(e) {

	var scrollTop = $(this).scrollTop();

	if (scrollTop >= maxTop) {

		$(".screen_commod_up_c ").css("display", "block");
		// $(".screen_commod_up_c").css("top", "-37px");
		$(".screen_commod_up_c").stop(true).animate({
			"top": "0px"
		}, 400);

	} else {
		$(".screen_commod_up_c ").css("display", "none");
		$(".screen_commod_up_c").css("top", "-37px");
	};
});

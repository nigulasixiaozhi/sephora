//标题文字轮播
$(document).ready(function() {

	$(".txtScroll-top").slide({
		mainCell: ".bd ul",
		autoPage: true,
		effect: "topLoop",
		autoPlay: true,
		vis: 1,
		delayTime: 1000
	});
});
// 支付框变色
$(document).ready(function() {

	// 	$(".checkoutPayFor_content_wrap-list").click(function() {
	// 		// 删除兄弟元素的acive
	// 		$(".checkoutPayFor_content_wrap .Online_Payment").removeClass("active");
	// 		// 自己添加
	// 		$(this).addClass("active");
	// 
	// 		$(".checkoutPayFor_content_wrap-list").click(function() {
	// 			// 删除兄弟元素的acive
	// 			$(".checkoutPayFor_content_wrap .COD").removeClass("active");
	// 			// 自己添加
	// 			$(this).addClass("active");
	// 		});
	// 	});
	// 	});
	$(".checkoutPayFor_content_wrap-list").click(function() {
		var flag = $(this).hasClass("active");
		$(".checkoutPayFor_content_wrap-list").removeClass("active");
		if (flag) {
			$(this).removeClass("active");
		} else {
			$(this).addClass("active");
		}
	});

});

//配送信息
$(document).ready(function() {
	// 点击
	$(".module_radio1").click(function() {
		$(this).removeClass("module_radio");
		$(this).addClass("module_radio_pos");
		$(".module_radio2").addClass("module_radio");
		$(".module_radio3").addClass("module_radio");
	});

	$(".module_radio2").click(function() {
		$(this).removeClass("module_radio");
		$(this).addClass("module_radio_pos");
		$(".module_radio1").addClass("module_radio");
		$(".module_radio3").addClass("module_radio");
	});

	$(".module_radio3").click(function() {
		$(this).removeClass("module_radio");
		$(this).addClass("module_radio_pos");
		$(".module_radio1").addClass("module_radio");
		$(".module_radio2").addClass("module_radio");
	});

});



//礼物包装
$(document).ready(function() {
	$("._checkbox").click(function() {
		var flag = $(this).hasClass("active");
		if (flag) {
			$(this).removeClass("active");
			$(this).addClass("none");
		} else {
			$(this).addClass("active");
			$(this).removeClass("none");
		}

	});
});



//窗口
// <!-- 弹出窗口 -->
var maxTop = ($(".checkoutSubmit-info-content-static").offset().top) - 720;
$(window).scroll(function(e) {
	var scrollTop = $(this).scrollTop();
	// 	console.log(scrollTop);
	// 	console.log(maxTop);
	if (scrollTop < maxTop) {
		$(".checkoutSubmit-info-content-static>div").addClass("checkoutSubmit-info-content-static_").addClass("fixed");
	} else {
		$(".checkoutSubmit-info-content-static>div").removeClass("checkoutSubmit-info-content-static_").removeClass("fixed");
	};
});


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
		$(".checkoutSubmit-info-content-static_").addClass("fixed");
	} else {
		$(".checkoutSubmit-info-content-static_").removeClass("fixed");
	};
});


//新建地址,弹出窗口
$(document).ready(function() {
	//
	var input = $(".input").val();
	var select = $(".P_select").val();
	var _name = $(".input_name").val();
	var _num = $(".input_num").val();

	// 新建地址
	// $(".address_content_uesr_ul_li_create").click(function() {
	// 	$(".bg").show(100);
	// 	$(".Popup_window").show(100);
	// });
	//保存使用
	$(".save").click(function() {
		// var inp = $(".input").val();
		// 		if (!inp) {
		// 			alert("输入为空")
		// 		}
		if ((input && select && _name && _num)=='') {
			$(".detection").addClass("visible");
			return;
		} else {
			$(".address_content_uesr_ul_li_create").style.display = "none";
			$(".module_span").style.display = "block";
			$(".bg").fadeOut(10);
			$(".Popup_window").fadeOut(10);
		}
		




	});
	//取消
	$(".flase").click(function() {
		$(".bg").hide();
		$(".Popup_window").hide();
		$(".detection").removeClass("visible");
	});
	//X
	$(".close").click(function() {
		$(".bg").hide();
		$(".Popup_window").hide();
		$(".detection").removeClass("visible");
	});




});

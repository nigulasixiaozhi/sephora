//滚动事件
$(window).scroll(function() {
	var scrollTop = $(this).scrollTop();
	//console.log(scrollTop);
	if (scrollTop < 345) {
		$(".settle ").css({
			"position":"fixed",
			"bottom":"0",
			"margin":"0"
		});
	} else {
		$(".settle ").css({
			"position":"inherit",
			"margin":"50px 0 100px"
		});
	};
});
//// 添加数量
////点击增加
//$(".shop_shop_perfume_num .plus").click(function() {
//	var $num = $(this).siblings(".nums")
//	var num = parseInt($num.text());
//	num++;
//	$num.text(num);
//	var price = $(this).parent().siblings(".shop_shop_perfume_mon").text();
//	$(this).parent().siblings(".shop_shop_perfume_small").text(num * price);
//
//
//	var checked = $(this).parents(".shop_shop_perfume_num").siblings(".shop_shop_perfume_choice").find("input").prop(
//		"checked");
//
//	if (checked == true) {
//
//		var ns = parseInt($(".settle .settle_money_up_num").text());
//
//		var m = parseFloat($(this).parents(".shop_shop_perfume_num").siblings(".shop_shop_perfume_mon").text());
//		var ms = parseInt($(".settle .settle_money_up_money").text());
//
//		$(".settle_money_up_num").text(ns + 1);
//
//		$(".settle_money_up_money").text(ms + m);
//		$(".settle_money_down_le span").text(ms + m);
//	}
//})
////点击减少
//$(".shop_shop_perfume_num .subtract").click(function() {
//	var $num = $(this).siblings(".nums")
//	var num = parseInt($num.text());
//	num--;
//	if (num>1) {
//		$num.text(num);
//		//小计
//		var price = $(this).parent().siblings(".shop_shop_perfume_mon").text();
//		$(this).parent().siblings(".shop_shop_perfume_small").text(num * price);
//
//
//		var checked = $(this).parents(".shop_shop_perfume_num").siblings(".shop_shop_perfume_choice").find("input").prop(
//			"checked");
//		if (checked == true) {
//
//			var ns = parseInt($(".settle .settle_money_up_num").text());
//
//			var m = parseFloat($(this).parents(".shop_shop_perfume_num").siblings(".shop_shop_perfume_mon").text());
//			var ms = parseInt($(".settle .settle_money_up_money").text());
//
//			$(".settle_money_up_num").text(ns - 1);
//
//			$(".settle_money_up_money").text(ms - m);
//			$(".settle_money_down_le span").text(ms - m);
//		}
//	} else{
//		$num.text(1);
//	}
//
//});
////计算总数量
//function cal_Num() {
//	var sum = 0;
//	$(".shop_shop_perfume_num .nums").each(function(index) {
//		var n = parseInt($(this).text());
//		sum += n;
//	})
//	$(".settle_money_up_num").text(sum);
//}
////计算总价格
//function cal_Cost() {
//	var aum = 0;
//	$(".shop_shop_perfume_small").each(function(index) {
//		var m = parseFloat($(this).text());
//		aum += m;
//	})
//	$(".settle_money_up_money").text(aum);
//	$(".settle_money_down_le span").text(aum);
//}
// 鼠标放上
$(".shop_shop_perfume_message_ml a").mouseenter(function() {
	$(this).siblings(".shop_shop_perfume_message_red").find("img").css("display", "block");
});

$(".shop_shop_perfume_message_ml a").mouseleave(function() {
	$(this).siblings(".shop_shop_perfume_message_red").find("img").css("display", "none");
});
//一键全选
//$("#checkAll").click(function() {
//	var checked = $(this).prop("checked");
//	$(".settle_all input:checkbox").prop("checked", checked);
//	$(".shop_shop input:checkbox").prop("checked", checked);
//	if (checked == true) {
//		cal_Num()
//		cal_Cost()
//	} else {
//		$(".settle_money_up_num").text("0");
//		$(".settle_money_up_money").text("0");
//		$(".settle_money_down_le span").text("0");
//	}
//});

// 第二个
//$("#checkAlls").click(function() {
//	var checked = $(this).prop("checked");
//	// console.log("1");
//	$(".shop_all_whole input:checkbox").prop("checked", checked);
//	$(".shop_shop input:checkbox").prop("checked", checked);
//	if (checked == true) {
//		cal_Num()
//		cal_Cost()
//	} else {
//		$(".settle_money_up_num").text("0");
//		$(".settle_money_up_money").text("0");
//		$(".settle_money_down_le span").text("0");
//	}
//});
//// 第三个
//$("#checkAllss").click(function() {
//	var checked = $(this).prop("checked");
//	//console.log("1");
//	$(".shop_all_whole input:checkbox").prop("checked", checked);
//	$(".shop_shop input:checkbox").prop("checked", checked);
//	if (checked == true) {
//		cal_Num()
//		cal_Cost()
//	} else {
//		$(".settle_money_up_num").text("0");
//		$(".settle_money_up_money").text("0");
//		$(".settle_money_down_le span").text("0");
//	}
//});
// 判断全选
//$(".shop_shop input:checkbox").click(function() {
//	// 总共多少个
//	var total = $(".shop_shop input:checkbox").length;
//	//选中的checkbox
//	var chked = $(".shop_shop input:checked").length;
//	if (chked == total) {
//		$("#checkAll").prop("checked", true);
//		$("#checkAlls").prop("checked", true);
//	} else {
//		$("#checkAll").prop("checked", false);
//		$("#checkAlls").prop("checked", false);
//	}
//	// 计算价格
//	var checked = $(this).prop("checked");
//	if (checked == true) {
//		var n = parseInt($(this).parents(".shop_shop_perfume_choice").siblings(".shop_shop_perfume_num").find(".nums").text());
//		var ns = parseInt($(".settle .settle_money_up_num").text());
//
//		var m = parseFloat($(this).parents(".shop_shop_perfume_choice").siblings(".shop_shop_perfume_small").text());
//		var ms = parseInt($(".settle .settle_money_up_money").text());
//		// console.log(n);
//		// console.log(ns);
//		// 清零
//		// $(".settle_money_up_num").text("");
//
//		$(".settle_money_up_num").text(ns + n);
//		// 清零
//		// $(".settle_money_up_money").text("");
//		// $(".settle_money_down_le span").text("");
//
//		$(".settle_money_up_money").text(ms + m);
//		$(".settle_money_down_le span").text(ms + m);
//	} else {
//		var n = parseInt($(this).parents(".shop_shop_perfume_choice").siblings(".shop_shop_perfume_num").find(".nums").text());
//		var ns = parseInt($(".settle .settle_money_up_num").text());
//
//		var m = parseFloat($(this).parents(".shop_shop_perfume_choice").siblings(".shop_shop_perfume_small").text());
//		var ms = parseInt($(".settle .settle_money_up_money").text());
//
//		$(".settle_money_up_num").text(ns - n);
//
//		$(".settle_money_up_money").text(ms - m);
//		$(".settle_money_down_le span").text(ms - m);
//	}
//})
// 点击删除
//$(".shop_shop_perfume_del").click(function() {
//
//	// 数量
//	var n = parseInt($(this).siblings(".shop_shop_perfume_num").find(".nums").text());
//	var ns = parseInt($(".settle .settle_money_up_num").text());
//	$(".settle_money_up_num").text(ns - n);
//
//	// 价格
//	var m = parseFloat($(this).siblings(".shop_shop_perfume_small").text());
//	var ms = parseInt($(".settle .settle_money_up_money").text());
//
//	$(".settle_money_up_money").text(ms - m);
//	$(".settle_money_down_le span").text(ms - m);
//
//	$(this).parents(".shop_shop_perfume").remove();
//
//})
// 点击更改规格
$(".shop_shop_perfume_message_ml a").click(function() {

	$(this).siblings(".shop_shop_perfume_message_cover").css("display", "block");

})
$(".shop_shop_perfume_message_cover_two li").click(function() {
	//判断是否有active
	var flag = $(this).hasClass("active_cov");
	// console.log(flag);

	//移除所有active
	$(this).parents(".shop_shop_perfume_message_cover_two").find("li").removeClass("active_cov");
	// console.log($(this));
	if (flag) {
		$(this).removeClass("active_cov");
	} else {
		$(this).addClass("active_cov");
	}


})
// 取消
$(".shop_shop_perfume_message_cover_three_ri").click(function() {
	$(this).parents(".shop_shop_perfume_message_cover").css("display", "none");
	$(this).parents(".shop_shop_perfume_message_cover_three").siblings(".shop_shop_perfume_message_cover_two").find(
			"li")
		.removeClass("active_cov");

})
$(".shop_shop_perfume_message_cover_three_le").click(function() {
	var x = $(this).parent(".shop_shop_perfume_message_cover_three").siblings(".shop_shop_perfume_message_cover_two").find(
		".active_cov").text();


	if (x == "50ML") {
		$(this).parents(".shop_shop_perfume_message").siblings(".shop_shop_perfume_mon").text("650.00");

		var $num = $(this).parents(".shop_shop_perfume_message").siblings(".shop_shop_perfume_num").find(".nums");
		var num = parseInt($num.text());
		$num.text(num);

		//小计
		var price = $(this).parents(".shop_shop_perfume_message").siblings(".shop_shop_perfume_mon").text();
		$(this).parents(".shop_shop_perfume_message").siblings(".shop_shop_perfume_small").text(num * price);
		$(this).parents(".shop_shop_perfume_message_cover").css("display", "none");

	}
	if (x == "30ML") {
		$(this).parents(".shop_shop_perfume_message").siblings(".shop_shop_perfume_mon").text("450.00");

		var $num = $(this).parents(".shop_shop_perfume_message").siblings(".shop_shop_perfume_num").find(".nums");
		var num = parseInt($num.text());
		// $num.text(num);

		//小计
		var price = $(this).parents(".shop_shop_perfume_message").siblings(".shop_shop_perfume_mon").text();
		$(this).parents(".shop_shop_perfume_message").siblings(".shop_shop_perfume_small").text(num * price);
		// console.log(num * price);
		$(this).parents(".shop_shop_perfume_message_cover").css("display", "none");

	}
})

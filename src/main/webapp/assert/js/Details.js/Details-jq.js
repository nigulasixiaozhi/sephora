// <!-- 点击 -->
$(document).ready(function() {

	$(".boxList li").click(function() {
		//判断是否有now
		var flag = $(this).hasClass("now");
		//移除所有now
		$(".boxList li").removeClass("now");

		if (flag) {
			$(this).removeClass("now");
		} else {
			$(this).addClass("now");
		}
		var i = $(this).index();
		//移除
		$(".boxList li now").css("box-shadow", "#eee");
		switch (i) {
			case 0:
				$(".price").find(".three").html("750");
				$(".picture").attr('src', "assert/img/Details/1.jpg");
				// $(".productImageChange").find(".photo").attr('src', "img/Details/1.jpg");
				break;
			case 1:
				$(".price").find(".three").html("540");
				$(".picture").attr('src', "assert/img/Details/2.jpg");
				// $(".productImageChange").find(".photo").attr('src', "img/Details/2.jpg");
				break;
			case 2:
				$(".price").find(".three").html("1100");
				$(".picture").attr('src', "assert/img/Details/3.jpg");
				// $(".productImageChange").find(".photo").attr('src', "img/Details/3.jpg");
				break;
			default:
				break;
		}
	});
	$(".noOpacity_1").click(function() {
		$(".picture").attr('src',"assert/img/Details/1.jpg")
	});
	
	$(".noOpacity_2").click(function() {
		$(".picture").attr('src',"assert/img/Details/2.jpg")
	});
	
	
});


// <!-- 点击购买   -->
$(document).ready(function() {
	//点击增加
	$(".topArrow").click(function() {
		var $txt = $("#txt1");
		var num = parseInt($txt.val());
		num++;
// 		if (num < 0) {
// 			return;
// 		}
		var txt2 = $txt.val(num);
		// console.log(txt2)
		if (num > 10) {
			// $(".topArrow").addClass("disable");
			return;
		}
		// 		}
	});
	$(".buttomArrow").click(function() {
		var $txt = $("#txt1");
		var num = parseInt($txt.val());
		num--;
		if (num < 1) {
			return;
		}
		var txt3 = $txt.val(num);
	});
	//购物车按钮
	$(".redButton").hover(function() {
		$(this).css("background-color", "black");
	}, function() {
		$(this).css("background-color", "red");
	});
});


// <!-- 弹出窗口 -->
var maxTop = $(".rightMainNav").offset().top;
$(window).scroll(function(e) {
	var scrollTop = $(this).scrollTop();
	// console.log(scrollTop);
	// console.log(maxTop);
	if (scrollTop >= maxTop) {
		$(".center").addClass("fixed");
	} else {
		$(".center").removeClass("fixed");
	};
});
// <!-- 弹出窗口跳转到相应位置 -->
$("#all1").on('click', $('#all1'), function() {
	$(window).scrollTop($('.leftLine').offset().top);
	$("#all1").addClass("now");
	$("#all1").siblings().removeClass("now");
});
$("#all2").on('click', $('#all2'), function() {
	$(window).scrollTop($('.comments').offset().top);
	$("#all2").addClass("now");
	$("#all2").siblings().removeClass("now");
});
$("#all3").on('click', $('#all3'), function() {
	$(window).scrollTop($('.question').offset().top);
	$("#all3").addClass("now");
	$("#all3").siblings().removeClass("now");
});
$("#all4").on('click', $('#all4'), function() {
	$(window).scrollTop($('.payLogistic').offset().top);
	$("#all4").addClass("now");
	$("#all4").siblings().removeClass("now");
});


// <!-- 商品评论功能 -->
$(".mainComment .listMain .current2").click(function() {
	$(".ulNone_1").css("display", "none");
	$(".ulNone_2").css("display", "block");
	//判断是否有current
	var flag = $(this).hasClass("current");
	//移除掉所有current
	$(".listpage a").removeClass("current");
	if (flag) {
		$(this).removeClass("current");
	} else {
		$(this).addClass("current");
	}
});
$(".mainComment .listMain .current1").click(function() {
	$(".ulNone_2").css("display", "none");
	$(".ulNone_1").css("display", "block");
	//判断是否有current
	var flag = $(this).hasClass("current");
	//移除掉所有current
	$(".listpage a").removeClass("current");
	if (flag) {
		$(this).removeClass("current");
	} else {
		$(this).addClass("current");
	}
	});
	$(".question .listMain .current2").click(function() {
		$(".ulNone_3").css("display", "none");
		$(".ulNone_4").css("display", "block");
		//判断是否有current
		var flag = $(this).hasClass("current");
		//移除掉所有current
		$(".listpage a").removeClass("current");
		if (flag) {
			$(this).removeClass("current");
		} else {
			$(this).addClass("current");
		}
	});
	$(".question  .listMain .current1").click(function() {
		$(".ulNone_4").css("display", "none");
		$(".ulNone_3").css("display", "block");
		//判断是否有current
		var flag = $(this).hasClass("current");
		//移除掉所有current
		$(".listpage a").removeClass("current");
		if (flag) {
			$(this).removeClass("current");
		} else {
			$(this).addClass("current");
		}
		
	});
	


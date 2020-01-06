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

// 三种支付方式
$(document).ready(function() {
	$(".title_Alipay").click(function() {
		var flag=$(this).hasClass("red");
		$(".title_Alipay").removeClass("red");
		if (flag) {
			$(this).removeClass("red");
		} else{
			$(this).addClass("red")
		}
	});
});

			//时间倒计时
// 			$(document).ready(function () {
// 				var oTime_=$(".OrderState_content_time");
// 				function oTime_(){
// 					//设置 未来时间
// 					var MaxTime = new Date(2019, 3, 22, 21, 0, 0);
// 					// date对象减法运算,结果是毫秒数
// 					var rest = MaxTime - now;
// 					var msec = parseInt(rest % 1000);
// 					var sec = parseInt(rest / 1000 % 60);
// 					var min = parseInt(rest / (1000 * 60) % 60);
// 					var hour = parseInt(rest / (1000 * 60 * 60) % 24);
// 					oTime_.text = hour + ":" + min + ":" + sec + ":" + msec;
// 				}
// 				oTime_();
// 				var timer;
// 				timer = setInterval(function() {
// 					oTime_();
// 				}, 1)
// 			});

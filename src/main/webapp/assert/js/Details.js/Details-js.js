// <!-- 放大镜 -->
var oImgOrVideo = document.querySelector(".imgOrVideo");
var oFloatBox = document.querySelector(".float-box");
var oImg = document.querySelector(".magnifier-container img");
var oMagnifierContainer = document.querySelector(".magnifier-container");
oImgOrVideo.onmouseover = function() {
	oFloatBox.style.display = "block";
	oMagnifierContainer.style.display = "block";
}
oImgOrVideo.onmousemove = function(event) {
	// 浮动盒子的left值 =鼠标的位置-浮动的盒子宽度的一半
	var left = event.clientX - oImgOrVideo.offsetWidth + oFloatBox.offsetWidth / 2 + oFloatBox.offsetWidth;
	var top = event.clientY - oFloatBox.offsetHeight * 4 ;

	var maxWidth = oImgOrVideo.offsetWidth - oFloatBox.offsetWidth;
	var maxHeight = oImgOrVideo.offsetHeight - oFloatBox.offsetHeight;
	if (left < 0) {
		left = 0
	} else if (left > maxWidth) {
		left = maxWidth;
	}

	if (top < 0) {
		top = 0
	} else if (top > maxHeight) {
		top = maxHeight;
	}
	oFloatBox.style.left = left + "px";
	oFloatBox.style.top = top + "px";

	// 浮动盒子的移动值/(小盒子宽度-浮动盒子的宽度)==大图片移动值/(大盒子的宽度-大图片的宽度)
	var xProportion = left / (oImgOrVideo.offsetWidth - oFloatBox.offsetWidth);
	var yProportion = top / (oImgOrVideo.offsetHeight - oFloatBox.offsetHeight);
	oImg.style.left = xProportion * (oMagnifierContainer.offsetWidth - oImg.offsetWidth) + "px";
	oImg.style.top = yProportion * (oMagnifierContainer.offsetHeight - oImg.offsetHeight) + "px";

}
oImgOrVideo.onmouseout = function() {
	oFloatBox.style.display = "none";
	oMagnifierContainer.style.display = "none";
	// oImgOrVideo.classList.add("active");

}

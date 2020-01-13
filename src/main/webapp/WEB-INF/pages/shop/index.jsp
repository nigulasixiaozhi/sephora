<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"> 
		<title></title>
		<jsp:include page="/base.jsp"></jsp:include>
		<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="assert/css/head/Hohead.css"/>
		<link rel="stylesheet" type="text/css" href="assert/css/HomePage/HomePage.css" />
		
	</head>
	<body>
		<!-- 头部 -->
		<div class="floor-2">
			<div class="container">
				<!-- 大轮播图下的图片 -->
				<div class="slideshow-downImg clearfix">
					<a href=""><img src="assert/img/HomePage/slider/sliderDown1.jpg"></a>
					<a href=""><img src="assert/img/HomePage/slider/sliderDown2.jpg"></a>
					<a href=""><img src="assert/img/HomePage/slider/sliderDown3.jpg"></a>
				</div>
				<!-- 全部品牌 -->
				<div class="brands">
					<div class="brand-title clearfix">
						<i class="sprite-title all-brands fl"></i>
						<ul class="brand-title-list fr clearfix">
							<li class="bolder">热门品牌</li>
							<li>独家品牌</li>
							<li><a href="">全部品牌</a></li>
						</ul>
					</div>
					<div class="position-re">
						<div id="slideBox1" class="slideBox1 slideBox-position ">
							<div class="hd">
								<ul>
									<li></li>
									<li></li>

								</ul>
							</div>
							<div class="bd">
								<ul>
									<li><a href=""><img src="assert/img/HomePage/slider/hp_superbrand1_20190314.jpg" /></a></li>
									<li><a href=""><img src="assert/img/HomePage/slider/hp_superbrand2_20190314.jpg" /></a></li>
								</ul>
							</div>

							<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
							<a class="prev" href="javascript:void(0)"><span class="prev-content"></span>
							</a>
							<a class="next" href="javascript:void(0)">
								<span class="next-content"></span></a>
						</div>
						<ul class="hot-brands show clearfix">
							<!-- <li>
								<img src="img/HomePage/brands/brands1.png">
								<div class="shade">
									<div>丝芙兰</div>
									<a class="check-brands" href="">点击查看</a>
								</div>
							</li> -->
						</ul>
						<ul class="hot-brands  clearfix">
							
						</ul>
					</div>
				</div>
				<!-- 精品推荐 -->
				<div class="picks clearfix">
					<i class="sprite-title sephora-picks"></i>
					<div class="picks-content fl">
						<a href=""><img src="assert/img/HomePage/SephoraPicks/hp_ranking_20190308.jpg"></a>
						<ul class="picks-list">
							<li><a href="">
									<span class="picks-brands">GIVENCHY</span>
									<span class="picks-title">纪梵希高定香榭天鹅绒唇膏(小羊皮)</span>
									<span class="picks-price">￥355.00</span>
									<img src="assert/img/HomePage/SephoraPicks/1_n_06813_180x180.jpg" title="纪梵希高定香榭天鹅绒唇膏(小羊皮)">
								</a></li>
							<li><a href="">
									<span class="picks-brands">GIORGIOARMANI</span>
									<span class="picks-title">阿玛尼臻致丝绒哑光唇釉</span>
									<span class="picks-price">￥310.00</span>
									<img src="assert/img/HomePage/SephoraPicks/1_n_06312_180x180.jpg" title="阿玛尼臻致丝绒哑光唇釉">
								</a></li>

						</ul>
					</div>
					<div class="picks-content fl">
						<a href=""><img src="assert/img/HomePage/SephoraPicks/hp_whatsnew_20190315.jpg"></a>
						<ul class="picks-list">
							<li><a href="">
									<span class="picks-brands">Fresh</span>
									<span class="picks-title">馥蕾诗睡莲青春活妍赋活面膜(小羊皮)</span>
									<span class="picks-price">￥580.00</span>
									<img src="assert/img/HomePage/SephoraPicks/1_n_07033_180x180.jpg" title="馥蕾诗睡莲青春活妍赋活面膜">
								</a></li>
							<li><a href="">
									<span class="picks-brands">SEPHORACOLLECTION</span>
									<span class="picks-title">丝芙兰护润保湿泡泡面膜</span>
									<span class="picks-price">￥310.00</span>
									<img src="assert/img/HomePage/SephoraPicks/1_n_07017_180x180.jpg" title="丝芙兰护润保湿泡泡面膜">
								</a></li>

						</ul>
					</div>
					<div class="picks-content fl">
						<a href=""><img src="assert/img/HomePage/SephoraPicks/hp_suncare_20190308.jpg"></a>
						<ul class="picks-list">
							<li><a href="">
									<span class="picks-brands">LANCOME</span>
									<span class="picks-title">兰蔻水漾轻透隔离露(小羊皮)</span>
									<span class="picks-price">￥480.00~￥695.00</span>
									<img src="assert/img/HomePage/SephoraPicks/1_n_06891_180x180.jpg" title="兰蔻水漾轻透隔离露">
								</a></li>
							<li><a href="">
									<span class="picks-brands">ESTEE_LAUDER</span>
									<span class="picks-title">雅诗兰黛鲜活亮采气垫修颜乳 SPF45/PA++++</span>
									<span class="picks-price">￥420.00</span>
									<img src="assert/img/HomePage/SephoraPicks/1_n_06193_180x180.jpg" title="雅诗兰黛鲜活亮采气垫修颜乳 SPF45/PA++++">
								</a></li>

						</ul>
					</div>
					<div class="picks-content fl">
						<a href=""><img src="assert/img/HomePage/SephoraPicks/hp_beautymaster_20190314.gif"></a>
					</div>

				</div>
				<!-- 护肤品类 -->
				<div class="skincare">
					<div class="title-position ">
						<i class="sprite-title skincare-img "></i>
						<ul class="title-list  clearfix">
							<li>
								<a href="">惠选套装</a>
								<em>|</em>
							</li>
							<li><a href="">面部精华</a>
								<em>|</em>
							</li>
							<li><a href="">美容仪</a>
								<em>|</em>
							</li>
							<li><a href="">面膜</a>
								<em>|</em>
							</li>
							<li><a href="">眼部护理</a>
								<em>|</em>
							</li>
							<li><a href="">清洁</a>
								<em>|</em>
							</li>
							<li><a href="">卸妆</a>
								<em>|</em>
							</li>
							<li><a href="">唇部</a>
								<em>|</em>
							</li>
							<li><a href="">全部</a>
							</li>
						</ul>
					</div>
					<div class="skincare-content clearfix">
						<div class="carousel-single fl">
							<a href=""><img src="assert/img/HomePage/skincare/hp_skinfloor_20190314.jpg"></a>
						</div>
						<ul class="categoryProduct fl">
							<li>
								<a href="">
									<span class="productBrands">CLINIQUE</span>
									<span class="productTitle">倩碧ID * 乳液惠选套...</span>
									<span class="productPrice">￥395.00</span>
									<img src="assert/img/HomePage/skincare/1_n_07043_180x180.jpg" title="倩碧ID * 乳液惠选套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">LANCOME</span>
									<span class="productTitle">兰蔻塑颜紧致修护嘉年华礼...</span>
									<span class="productPrice">￥1455.00</span>
									<img src="assert/img/HomePage/skincare/1_n_06820_180x180.jpg" title="兰蔻塑颜紧致修护嘉年华礼盒">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">Fresh</span>
									<span class="productTitle">馥蕾诗明星面膜尊享礼盒</span>
									<span class="productPrice">￥980.00</span>
									<img src="assert/img/HomePage/skincare/1_n_06989_180x180.jpg" title="馥蕾诗明星面膜尊享礼盒">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SEPHORACOLLECTION</span>
									<span class="productTitle">丝芙兰柠檬籽透亮耀活礼盒</span>
									<span class="productPrice">￥249.00</span>
									<img src="assert/img/HomePage/skincare/1_n_07017_180x180.jpg" title="丝芙兰柠檬籽透亮耀活礼盒">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">YAMAN</span>
									<span class="productTitle">雅萌RF射频美颜仪PLU...</span>
									<span class="productPrice">￥2999.00</span>
									<img src="assert/img/HomePage/skincare/1_n_06991_180x180.jpg" title="雅萌RF射频美颜仪PLUS套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">WEI</span>
									<span class="productTitle">蔚蓝之美非“泥" 莫属面...</span>
									<span class="productPrice">￥690.00</span>
					x				<img src="assert/img/HomePage/skincare/1_n_07033_180x180.jpg" title="蔚蓝之美非'泥 '莫属面膜套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">NUXE</span>
									<span class="productTitle">欧树植物奶保湿套装</span>
									<span class="productPrice">￥475.00</span>
									<img src="assert/img/HomePage/skincare/1_n_07080_180x180.jpg" title="欧树植物奶保湿套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">DrJart</span>
									<span class="productTitle">蒂佳婷水动力活力水润面膜...</span>
									<span class="productPrice">￥580.00</span>
									<img src="assert/img/HomePage/skincare/1_n_06983_180x180.jpg" title="蒂佳婷水动力活力水润面膜6盒装惠选套装">
								</a>
							</li>
						</ul>
					</div>
					<ul class="category-brands clearfix">
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands0.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands1.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands2.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands3.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands4.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands5.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands6.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands7.png"></a>
						</li>
					</ul>
				</div>
				<!-- 彩妆类 -->
				<div class="makeup">
					<div class="title-position ">
						<i class="sprite-title makeup-img "></i>
						<ul class="title-list clearfix">
							<li>
								<a href="">都市女性唇妆日记</a>
								<em>|</em>
							</li>
							<li><a href="">限定彩妆礼盒</a>
								<em>|</em>
							</li>
							<li><a href="">虫草粉底</a>
								<em>|</em>
							</li>
							<li><a href="">眉眼传情</a>
								<em>|</em>
							</li>
							<li><a href="">丝芙兰彩妆折扣</a>
								<em>|</em>
							</li>
							<li><a href="">独家彩妆精选榜单</a>
								<em>|</em>
							</li>
							<li><a href="">全部</a>
							</li>
						</ul>
					</div>
					<div class="skincare-content clearfix">
						<div class="carousel-single fl">
							<a href=""><img src="assert/img/HomePage/makeup/hp_mufloor_20190314.jpg"></a>
						</div>
						<ul class="categoryProduct fl">
							<li>
								<a href="">
									<span class="productBrands">GIVENCHY</span>
									<span class="productTitle">纪梵希高定香榭丝润唇膏</span>
									<span class="productPrice">￥320.00</span>
									<img src="assert/img/HomePage/makeup/1_n_06991_180x180.jpg" title="纪梵希高定香榭丝润唇膏">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">YSL</span>
									<span class="productTitle">圣罗兰恒颜无瑕粉底液</span>
									<span class="productPrice">￥580.00</span>
									<img src="assert/img/HomePage/makeup/1_n_07058_180x180.jpg" title="圣罗兰恒颜无瑕粉底液">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">ESTEELAUDER</span>
									<span class="productTitle">雅诗兰黛绝色魅惑唇膏</span>
									<span class="productPrice">￥320.00</span>
									<img src="assert/img/HomePage/makeup/1_n_07058_180x180%20(1).jpg" title="雅诗兰黛绝色魅惑唇膏">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">BENEFIT</span>
									<span class="productTitle">贝玲妃眉妆蜜友盒</span>
									<span class="productPrice">￥440.00</span>
									<img src="assert/img/HomePage/makeup/1_n_07047_180x180.jpg" title="贝玲妃眉妆蜜友盒">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">DIOR</span>
									<span class="productTitle">克丽丝汀迪奥烈艳蓝金挚红...</span>
									<span class="productPrice">￥320.00</span>
									<img src="assert/img/HomePage/makeup/1_n_07035_180x180.jpg" title="克丽丝汀迪奥烈艳蓝金挚红唇膏">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">M.A.C</span>
									<span class="productTitle"> 魅可海洋亮白气垫霜-樱...</span>
									<span class="productPrice">￥350.00</span>
									<img src="assert/img/HomePage/makeup/1_n_07080_180x180.jpg" title=" 魅可海洋亮白气垫霜-樱花限定">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">MarieDalgarColorStudio</span>
									<span class="productTitle">玛丽黛佳色彩工作室本色持...</span>
									<span class="productPrice">￥389.00</span>
									<img src="assert/img/HomePage/makeup/1_n_06993_180x180.jpg" title="玛丽黛佳色彩工作室本色持妆粉底液惠选套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="BURBERRY">DrJart</span>
									<span class="productTitle">博柏利挚爱绯色悦粉颜彩盘</span>
									<span class="productPrice">￥640.00~￥950.00</span>
									<img src="assert/img/HomePage/makeup/1_n_06932_180x180.jpg" title="博柏利挚爱绯色悦粉颜彩盘">
								</a>
							</li>
						</ul>
					</div>
					<ul class="category-brands clearfix">
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands8.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands9.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands10.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands11.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands12.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands13.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands14.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands15.png"></a>
						</li>
					</ul>

				</div>
				<!-- 香氛品类 -->
				<div class="fragrance">
					<div class="title-position ">
						<i class="sprite-title fragrance-img "></i>
						<ul class="title-list  clearfix">
							<li>
								<a href="">王俊凯许你美丽人生</a>
								<em>|</em>
							</li>
							<li><a href="">缪缪莹铃新香</a>
								<em>|</em>
							</li>
							<li><a href="">男士香氛精选</a>
								<em>|</em>
							</li>
							<li><a href="">马丁马吉拉沙滩漫步</a>
								<em>|</em>
							</li>
							<li><a href="">'小众'香水</a>
								<em>|</em>
							</li>
							<li><a href="">新品女香大赏</a>
								<em>|</em>
							</li>
							<li><a href="">兰蔻嘉年华礼盒</a>
								<em>|</em>
							</li>
							<li><a href="">全部</a>
							</li>
						</ul>
					</div>
					<div class="skincare-content clearfix">
						<div class="carousel-single fl">
							<a href=""><img src="assert/img/HomePage/fragrance/hp_frafloor_20190314.jpg"></a>
						</div>
						<ul class="categoryProduct fl">
							<li>
								<a href="">
									<span class="productBrands">DIOR</span>
									<span class="productTitle">克丽丝汀迪奥迪奥小姐淡香...</span>
									<span class="productPrice">￥750.00</span>
									<img src="assert/img/HomePage/fragrance/1_n_06936_180x180.jpg" title="克丽丝汀迪奥迪奥小姐淡香水">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">Maison Margiela</span>
									<span class="productTitle">Maison Margi...</span>
									<span class="productPrice">￥1000.00</span>
									<img src="assert/img/HomePage/fragrance/1_n_06945_180x180.jpg" title="Maison Margiela花卉市场淡香水">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">YSL</span>
									<span class="productTitle">圣罗兰反转巴黎女士香水</span>
									<span class="productPrice">￥770.00~￥1570.00</span>
									<img src="assert/img/HomePage/fragrance/1_n_06553_180x180.jpg" title="圣罗兰反转巴黎女士香水">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">GUCCI</span>
									<span class="productTitle">古驰绚丽栀子淡香水挚爱礼...</span>
									<span class="productPrice">￥1330.00</span>
									<img src="assert/img/HomePage/fragrance/1_n_06817_180x180.jpg" title="古驰绚丽栀子淡香水挚爱礼盒">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">BVLGARI</span>
									<span class="productTitle">宝格丽玫香金漾女士香水套...</span>
									<span class="productPrice">￥1000.00</span>
									<img src="assert/img/HomePage/fragrance/1_n_06965_180x180.jpg" title="宝格丽玫香金漾女士香水套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">MARC JACOBS</span>
									<span class="productTitle">莫杰雏菊女士淡香水假日礼...</span>
									<span class="productPrice">￥880.00</span>
									<img src="assert/img/HomePage/fragrance/1_n_06936_180x180%20(1).jpg" title="莫杰雏菊女士淡香水假日礼盒Ⅱ 18">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">MARC JACOBS</span>
									<span class="productTitle">莫杰雏菊女士淡香水假日礼...</span>
									<span class="productPrice">￥880.00</span>
									<img src="assert/img/HomePage/fragrance/1_n_06827_180x180.jpg" title="莫杰雏菊女士淡香水假日礼盒Ⅱ 18">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">DrJart</span>
									<span class="productTitle">兰蔻美丽人生花语香水</span>
									<span class="productPrice">￥520.00~￥1080.00</span>
									<img src="assert/img/HomePage/fragrance/1_n_06931_180x180.jpg" title="兰蔻美丽人生花语香水">
								</a>
							</li>
						</ul>
					</div>
					<ul class="category-brands clearfix">
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands8.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands16.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands17.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands18.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands19.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands20.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands21.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands22.png"></a>
						</li>
					</ul>
				</div>
				<!-- 工具品类 -->
				<div class="tools">
					<div class="title-position ">
						<i class="sprite-title tools-img "></i>
						<ul class="title-list  clearfix">
							<li>
								<a href="">玫瑰金恋爱物语礼盒</a>
								<em>|</em>
							</li>
							<li><a href="">独家网红刷</a>
								<em>|</em>
							</li>
							<li><a href="">芭比波朗彩妆刷</a>
								<em>|</em>
							</li>
							<li><a href="">眼影刷</a>
								<em>|</em>
							</li>
							<li><a href="">化妆刷套组</a>
								<em>|</em>
							</li>
							<li><a href="">55号粉底刷</a>
								<em>|</em>
							</li>
							<li><a href="">芭比波朗工具</a>
								<em>|</em>
							</li>
							<li><a href="">全部</a>
							</li>
						</ul>
					</div>
					<div class="skincare-content clearfix">
						<div class="carousel-single fl">
							<a href=""><img src="assert/img/HomePage/tools/hp_toolfloor_20190314.jpg"></a>
						</div>
						<ul class="categoryProduct fl">
							<li>
								<a href="">
									<span class="productBrands">SEPHORACOLLECTION</span>
									<span class="productTitle">丝芙兰玩趣甜粉美妆套刷</span>
									<span class="productPrice">￥399.00</span>
									<img src="assert/img/HomePage/tools/1_n_06891_180x180.jpg" title="丝芙兰玩趣甜粉美妆套刷">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SHUUEMURA</span>
									<span class="productTitle">植村秀55号粉底刷</span>
									<span class="productPrice">￥480.00</span>
									<img src="assert/img/HomePage/tools/1_n_06817_180x180%20(1).jpg" title="植村秀55号粉底刷">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">beautyblender</span>
									<span class="productTitle">美妆蛋甜蜜宠爱套装</span>
									<span class="productPrice">￥335.00</span>
									<img src="assert/img/HomePage/tools/1_n_06717_180x180.jpg" title="美妆蛋甜蜜宠爱套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SEPHORACOLLECTION</span>
									<span class="productTitle">丝芙兰省水化妆棉3件惠选...</span>
									<span class="productPrice">￥78.00</span>
									<img src="assert/img/HomePage/tools/1_n_07035_180x180.jpg" title="丝芙兰省水化妆棉3件惠选套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">MAKEUPFOREVER</span>
									<span class="productTitle">玫珂菲KABUKI蜜粉刷</span>
									<span class="productPrice">￥480.00</span>
									<img src="assert/img/HomePage/tools/1_n_06813_180x180.jpg" title="玫珂菲KABUKI蜜粉刷">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">beautyblender</span>
									<span class="productTitle">美妆蛋庆典红金艳套装</span>
									<span class="productPrice">￥240.00</span>
									<img src="assert/img/HomePage/tools/1_n_06859_180x180.jpg" title="美妆蛋庆典红金艳套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">SEPHORACOLLECTION</span>
									<span class="productTitle">丝芙兰漫威英雄彩妆刷套装</span>
									<span class="productPrice">￥399.00</span>
									<img src="assert/img/HomePage/tools/1_n_06584_180x180.jpg" title="丝芙兰漫威英雄彩妆刷套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">SEPHORACOLLECTION</span>
									<span class="productTitle">丝芙兰钻石形粉底刷</span>
									<span class="productPrice">￥379.00</span>
									<img src="assert/img/HomePage/tools/1_n_06655_180x180.jpg" title="丝芙兰钻石形粉底刷">
								</a>
							</li>
						</ul>
					</div>
					<ul class="category-brands clearfix">
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands1.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands8.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands5.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands7.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands20.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands18.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands10.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands16.png"></a>
						</li>
					</ul>

				</div>
				<!-- 男士护肤品类 -->
				<div class="man">
					<div class="title-position ">
						<i class="sprite-title man-img "></i>
						<ul class="title-list  clearfix">
							<li>
								<a href="">惠选套装</a>
								<em>|</em>
							</li>
							<li><a href="">控油平衡</a>
								<em>|</em>
							</li>
							<li><a href="">保湿水润</a>
								<em>|</em>
							</li>
							<li><a href="">滋养紧致</a>
								<em>|</em>
							</li>
							<li><a href="">剃须护理</a>
								<em>|</em>
							</li>
							<li><a href="">眼部护理</a>
								<em>|</em>
							</li>
							<li><a href="">全部</a>
							</li>
						</ul>
					</div>
					<div class="skincare-content clearfix">
						<div class="carousel-single fl">
							<a href=""><img src="assert/img/HomePage/man/hp_manfloor_20190307.jpg"></a>
						</div>
						<ul class="categoryProduct fl">
							<li>
								<a href="">
									<span class="productBrands">BIOTHERM</span>
									<span class="productTitle">男士水动力保湿臻选礼盒</span>
									<span class="productPrice">￥500.00</span>
									<img src="assert/img/HomePage/man/1_n_07080_180x180.jpg" title="男士水动力保湿臻选礼盒">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">UNITOUCH</span>
									<span class="productTitle">优莉缇男士保湿净亮面膜 ...</span>
									<span class="productPrice">￥158.00</span>
									<img src="assert/img/HomePage/man/1_n_07017_180x180.jpg" title="优莉缇男士保湿净亮面膜 BAD BOY系列">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">PHILIPS</span>
									<span class="productTitle">飞利浦眼部仪礼盒</span>
									<span class="productPrice">￥1314.00</span>
									<img src="assert/img/HomePage/man/1_n_06817_180x180.jpg" title="飞利浦眼部仪礼盒">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">LABSERIES</span>
									<span class="productTitle">男用多功能洁面乳200m...</span>
									<span class="productPrice">￥299.00</span>
									<img src="assert/img/HomePage/man/1_n_06983_180x180.jpg" title="男用多功能洁面乳200ml惠选套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">DTRT</span>
									<span class="productTitle">杜比丽夫多效合一游戏版限...</span>
									<span class="productPrice">￥568.00</span>
									<img src="assert/img/HomePage/man/1_n_06221_180x180.jpg" title="杜比丽夫多效合一游戏版限量套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">LABSERIES</span>
									<span class="productTitle">LAB SERIES俊范...</span>
									<span class="productPrice">￥228.00</span>
									<img src="assert/img/HomePage/man/1_n_06983_180x180%20(1).jpg" title="LAB SERIES俊范多效保养乳液惠选套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">BIOTHERM</span>
									<span class="productTitle">碧欧泉男士新净肤细致保湿...</span>
									<span class="productPrice">￥390.00</span>
									<img src="assert/img/HomePage/man/1_n_06983_180x180%20(2).jpg" title="碧欧泉男士新净肤细致保湿露惠选套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">DTRT</span>
									<span class="productTitle">杜比丽夫男士油脂平衡保湿...</span>
									<span class="productPrice">￥340.00</span>
									<img src="assert/img/HomePage/man/1_n_06983_180x180%20(3).jpg" title="杜比丽夫男士油脂平衡保湿乳惠选套装">
								</a>
							</li>

						</ul>
					</div>
					<ul class="category-brands clearfix">
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands6.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands2.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands5.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands9.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands22.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands16.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands12.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands15.png"></a>
						</li>
					</ul>
				</div>
				<!-- 洗浴护体类 -->
				<div class="body">
					<div class="title-position ">
						<i class="sprite-title body-img "></i>
						<ul class="title-list  clearfix">
							<li>
								<a href="">惠选套装</a>
								<em>|</em>
							</li>
							<li><a href="">沐浴清洁</a>
								<em>|</em>
							</li>
							<li><a href="">身体护理</a>
								<em>|</em>
							</li>
							<li><a href="">手部护理</a>
								<em>|</em>
							</li>
							<li><a href="">胸部护理</a>
								<em>|</em>
							</li>
							<li><a href="">足部护理</a>
								<em>|</em>
							</li>
							<li><a href="">全部</a>
							</li>
						</ul>
					</div>
					<div class="skincare-content clearfix">
						<div class="carousel-single fl">
							<a href=""><img src="assert/img/HomePage/body/hp_bodyfloor_20190314.jpg"></a>
						</div>
						<ul class="categoryProduct fl">
							<li>
								<a href="">
									<span class="productBrands">WEI</span>
									<span class="productTitle">蔚蓝之美奢润宠爱手霜套装</span>
									<span class="productPrice">￥195.00</span>
									<img src="assert/img/HomePage/body/1_n_06999_180x180.jpg" title="蔚蓝之美奢润宠爱手霜套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SEPHORACOLLECTION</span>
									<span class="productTitle">丝芙兰手脚膜护理套装</span>
									<span class="productPrice">￥129.00</span>
									<img src="assert/img/HomePage/body/1_n_07049_180x180.jpg" title="丝芙兰手脚膜护理套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SEPHORACOLLECTION</span>
									<span class="productTitle">丝芙兰保湿清新身体乳</span>
									<span class="productPrice">￥79.00</span>
									<img src="assert/img/HomePage/body/1_n_06628_180x180.jpg" title="丝芙兰保湿清新身体乳">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">Fresh</span>
									<span class="productTitle">馥蕾诗梦中情人护唇膏礼盒</span>
									<span class="productPrice">￥170.00</span>
									<img src="assert/img/HomePage/body/1_n_06965_180x180.jpg" title="馥蕾诗梦中情人护唇膏礼盒">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">PETERTHOMASROTH</span>
									<span class="productTitle">彼得罗夫轮廓紧致提升霜惠...</span>
									<span class="productPrice">￥660.00</span>
									<img src="assert/img/HomePage/body/1_n_06991_180x180.jpg" title="彼得罗夫轮廓紧致提升霜惠选套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">NUXE</span>
									<span class="productTitle">欧树槐花蜜面部和身体特润...</span>
									<span class="productPrice">￥145.00</span>
									<img src="assert/img/HomePage/body/1_n_06991_180x180%20(1).jpg" title="欧树槐花蜜面部和身体特润洁肤凝胶套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">KENZO</span>
									<span class="productTitle">凯卓感性滋养柔肤霜（大米...</span>
									<span class="productPrice">￥580.00</span>
									<img src="assert/img/HomePage/body/1_n_06178_180x180.jpg" title="凯卓感性滋养柔肤霜（大米身体霜）">
								</a>
							</li>
							<li>
								<a href="">
									<span class="LANCOME">SEPHORACOLLECTION</span>
									<span class="productTitle">丝芙兰猫头鹰梦幻浴盐杯</span>
									<span class="productPrice">￥129.00</span>
									<img src="assert/img/HomePage/body/1_n_06811_180x180.jpg" title="丝芙兰猫头鹰梦幻浴盐杯">
								</a>
							</li>

						</ul>
					</div>
					<ul class="category-brands clearfix">
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands7.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands3.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands8.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands10.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands23.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands15.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands13.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands16.png"></a>
						</li>
					</ul>
				</div>
				<!-- 美发护发品类 -->
				<div class="hair">
					<div class="title-position ">
						<i class="sprite-title hair-img "></i>
						<ul class="title-list  clearfix">
							<li>
								<a href="">惠选套装</a>
								<em>|</em>
							</li>
							<li><a href="">美发工具</a>
								<em>|</em>
							</li>
							<li><a href="">洗发产品</a>
								<em>|</em>
							</li>
							<li><a href="">护发产品</a>
								<em>|</em>
							</li>
							<li><a href="">头皮护理</a>
								<em>|</em>
							</li>
							<li><a href="">美发产品</a>
								<em>|</em>
							</li>
							<li><a href="">全部</a>
							</li>
						</ul>
					</div>
					<div class="skincare-content clearfix">
						<div class="carousel-single fl">
							<a href=""><img src="assert/img/HomePage/hair/hp_hairfloor_20190314.jpg"></a>
						</div>
						<ul class="categoryProduct fl">
							<li>
								<a href="">
									<span class="productBrands">PERCYANDREED</span>
									<span class="productTitle">佩妍丽滋润保湿护发造型探...</span>
									<span class="productPrice">￥148.00</span>
									<img src="assert/img/HomePage/hair/1_n_07035_180x180.jpg" title="佩妍丽滋润保湿护发造型探索套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">PERCYANDREED</span>
									<span class="productTitle">佩妍丽丰盈护发造型探索套...</span>
									<span class="productPrice">￥148.00</span>
									<img src="assert/img/HomePage/hair/1_n_07035_180x180%20(1).jpg" title="佩妍丽丰盈护发造型探索套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SEBASTIAN</span>
									<span class="productTitle">塞巴斯汀“瑜”世无双</span>
									<span class="productPrice">￥368.00</span>
									<img src="assert/img/HomePage/hair/1_n_06903_180x180.jpg" title="塞巴斯汀“瑜”世无双">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SEBASTIAN</span>
									<span class="productTitle">塞巴斯汀柔护造型凝胶</span>
									<span class="productPrice">￥139.00~￥298.00</span>
									<img src="assert/img/HomePage/hair/1_n_06602_180x180.jpg" title="塞巴斯汀柔护造型凝胶">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">WELLA</span>
									<span class="productTitle">威娜氨基酸双重强化洗护套...</span>
									<span class="productPrice">￥496.00</span>
									<img src="assert/img/HomePage/hair/1_n_06787_180x180.jpg" title="威娜氨基酸双重强化洗护套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">WELLA</span>
									<span class="productTitle">威娜滋养修护发尾修护油</span>
									<span class="productPrice">￥98.00</span>
									<img src="assert/img/HomePage/hair/1_n_06813_180x180.jpg" title="威娜滋养修护发尾修护油">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SYSTEM PROFESSIONAL</span>
									<span class="productTitle">德研丝秀发焕能角蛋白养护...</span>
									<span class="productPrice">￥696.00</span>
									<img src="assert/img/HomePage/hair/1_n_06663_180x180.jpg" title="德研丝秀发焕能角蛋白养护洁发乳&护发乳惠选套装">
								</a>
							</li>
							<li>
								<a href="">
									<span class="productBrands">SYSTEM PROFESSIONAL</span>
									<span class="productTitle">德研丝轻盈保湿洁发乳</span>
									<span class="productPrice">￥298.00~￥398.00</span>
									<img src="assert/img/HomePage/hair/1_n_06817_180x180.jpg" title="德研丝轻盈保湿洁发乳">
								</a>
							</li>
						</ul>
					</div>
					<ul class="category-brands clearfix">
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands8.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands4.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands9.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands11.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands16.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands4.png"></a>
							<em>|</em>
						</li>
						<li>
							<a href=""><img src="assert/img/HomePage/brands/brands17.png"></a>
						</li>
					</ul>

				</div>
				<!-- 猜你喜欢 -->
				<div class="like">
					<i class="sprite-title like-img"></i>
					<ul class="like-list clearfix">
							<li>
							<a href=""><img src="assert/img/HomePage/like/1_n_07035_280x280.jpg" ></a>
							<span class="like-brands">SEPHORACOLLECTION</span>
							<a href=""><span class="like-title">丝芙兰柑橘卸妆巾2件惠选套装</span></a>
							<span class="like-price">￥55.00</span>
						</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_07035_280x280%20(1).jpg" ></a>
								<span class="like-brands">SEPHORACOLLECTION</span>
								<a href=""><span class="like-title">丝芙兰绿茶卸妆巾25片装2件惠选套装</span></a>
								<span class="like-price">￥55.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_07035_280x280%20(2).jpg" ></a>
								<span class="like-brands">SEPHORACOLLECTION</span>
								<a href=""><span class="like-title">丝芙兰炭黑卸妆巾25片装2件惠选套装</span></a>
								<span class="like-price">￥55.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_07035_280x280%20(3).jpg" ></a>
								<span class="like-brands">SEPHORACOLLECTION</span>
								<a href=""><span class="like-title">丝芙兰润唇膏(玫瑰)2件惠选套装</span></a>
								<span class="like-price">￥45.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_07035_280x280%20(4).jpg" ></a>
								<span class="like-brands">SEPHORACOLLECTION</span>
								<a href=""><span class="like-title">丝芙兰润唇膏(枸杞)2件惠选套装</span></a>
								<span class="like-price">￥55.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_07033_280x280.jpg" ></a>
								<span class="like-brands">CLINIQUE</span>
								<a href=""><span class="like-title">倩碧ID * 乳液</span></a>
								<span class="like-price">￥395.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06983_280x280.jpg" ></a>
								<span class="like-brands">CLINIQUE</span>
								<a href=""><span class="like-title">倩碧卓越润肤凝露惠选套装</span></a>
								<span class="like-price">￥395.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06983_280x280%20(1).jpg" ></a>
								<span class="like-brands">CLINIQUE</span>
								<a href=""><span class="like-title">倩碧润肤乳-清爽型惠选套装</span></a>
								<span class="like-price">￥295.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_07038_280x280.jpg" ></a>
								<span class="like-brands">CLINIQUE</span>
								<a href=""><span class="like-title">倩碧水嫩保湿水精萃惠选套装</span></a>
								<span class="like-price">￥250.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06955_280x280.jpg" ></a>
								<span class="like-brands">CLINIQUE</span>
								<a href=""><span class="like-title">倩碧卓越润肤凝露新春惠选套装</span></a>
								<span class="like-price">￥295.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06903_280x280.jpg" ></a>
								<span class="like-brands">LANCOME</span>
								<a href=""><span class="like-title">兰蔻美丽人生花语香水嘉年华礼盒</span></a>
								<span class="like-price">￥1080.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06827_280x280.jpg" ></a>
								<span class="like-brands">MIUMIU</span>
								<a href=""><span class="like-title">缪缪莹铃女士香氛</span></a>
								<span class="like-price">￥895.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06591_280x280.jpg" ></a>
								<span class="like-brands">GIORGIOARMANI</span>
								<a href=""><span class="like-title">阿玛尼迷情挚爱女士香水</span></a>
								<span class="like-price">￥880.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06812_280x280%20(1).jpg" ></a>
								<span class="like-brands">LANCOME</span>
								<a href=""><span class="like-title">兰蔻奇迹香氛</span></a>
								<span class="like-price">￥490.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06775_280x280.jpg" ></a>
								<span class="like-brands">BVLGARI</span>
								<a href=""><span class="like-title">宝格丽玫香金漾女士香水</span></a>
								<span class="like-price">￥1380.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06812_280x280%20(1).jpg" ></a>
								<span class="like-brands">DIOR</span>
								<a href=""><span class="like-title">克丽丝汀迪奥迪奥小姐花漾淡香水</span></a>
								<span class="like-price">￥750.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06178_280x280.jpg" ></a>
								<span class="like-brands">DIOR</span>
								<a href=""><span class="like-title">克丽丝汀迪奥全新迪奥小姐淡香氛</span></a>
								<span class="like-price">￥750.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_05502_280x280.jpg" ></a>
								<span class="like-brands">DIOR</span>
								<a href=""><span class="like-title">克丽丝汀迪奥迪奥小姐漫舞花漾香氛</span></a>
								<span class="like-price">￥900.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06812_280x280%20(1).jpg" ></a>
								<span class="like-brands">DIOR</span>
								<a href=""><span class="like-title">克丽丝汀迪奥小姐香氛</span></a>
								<span class="like-price">￥680.00</span>
							</li>
							<li>
								<a href=""><img src="assert/img/HomePage/like/1_n_06273_280x280.jpg" ></a>
								<span class="like-brands">DIOR</span>
								<a href=""><span class="like-title">克丽丝汀迪奥迪奥小姐随行香氛系列</span></a>
								<span class="like-price">￥380.00</span>
							</li>
						
					</ul>
				</div>
			</div>
		</div>
		<!-- 脚部 -->
		<%@ include file="/foot.jsp" %>
		<!-- 搜索框浮动 -->
		<div class="fixedTop">
			<div class="container clearfix">
			<a href="index/"><img src="assert/img/head/download.png" ></a>
			<div class="search">
				<input id="searchBox" type="text" placeholder="迪奥香氛">
				<span id="searchBtn">搜索</span>
				<!-- 点击框 -->
				<div class="top_search_int_arise">
					<div class="top_search_int_arise_txt">
						<!-- 热门搜索 -->
						<div class="top_search_int_arise_seek">
							<div class="top_search_int_arise_seek_up">
								热门搜索
							</div>
							<div class="top_search_int_arise_seek_down">
								<div class="recomm fl">
									<a href="#">热销好屋榜</a>
								</div>
								<div class="recomm fl">
									<a href="#">热门防晒盘点</a>
								</div>
								<div class="recomm fl">
									<a href="#">网红底妆</a>
								</div>
								<div class="recomm fl">
									<a href="#">精选面膜大赏</a>
								</div>
								<div class="recomm fl">
									<a href="#">焕彩越焕越美</a>
								</div>
								<div class="recomm fl">
									<a href="#">春日奇思妙香</a>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			</div>
		</div>
		<!-- 右侧导航栏 -->
		<ul class="toolbar">
			<li>
				<a href="">
					<span class="toolbar-text">个人信息</span>
					<em class="sprite-toolbar person"></em>
				</a>
			</li>
			<li>
				<a href="">
					<span class="toolbar-text">购物车</span>
					<em class="sprite-toolbar shoping"></em>
				</a>
			</li>
			<li>
				<a href="">
					<span class="toolbar-text">联系客服</span>
					<em class="sprite-toolbar service"></em>
				</a>
			</li>
			<li>
				<a href="">
					<span class="toolbar-text">移动丝芙兰</span>
					<em class="sprite-toolbar mobile"></em>
				</a>
			</li>
			<li>
				<a href="javascript:;">
					<span class="toolbar-text">返回顶部</span>
					<em class="sprite-toolbar return"></em>
				</a>
			</li>
		</ul>
		
		<!-- 左侧导航栏 -->
		<ul class="fixed-left">
			<li><span>护肤品类</span></li>
			<li><span>彩妆品类</span></li>
			<li><span>香氛品类</span></li>
			<li><span>工具品类</span></li>
			<li><span>男士护肤</span></li>
			<li><span>洗浴护体</span></li>
			<li><span>美发护发</span></li>
		</ul>
		<script src="assert/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(document).ready(function(){
			//标题文字轮播
			$(".txtScroll-top").slide({
				mainCell: ".bd ul",
				autoPage: true,
				effect:"topLoop",
				autoPlay: true,
				vis: 1,
				delayTime:1000
			});
			//大轮播图
			/* $(".slideBox").slide({
				mainCell: ".bd ul",
				autoPlay: true
			}); */
			//小轮播图
			$(".slideBox1").slide({
				mainCell: ".bd ul",
				autoPlay: true,
				effect: "fold"
			});
			//全部品牌
			$(".brand-title .brand-title-list li").click(function() {
				var index = $(this).index();
				$(this).addClass("bolder").siblings("li").removeClass("bolder");
				$(".floor-2 .hot-brands").eq(index).addClass("show").removeClass("hide").siblings(".hot-brands").addClass("hide")
					.removeClass("show");
			})
			var hotBrands = ["威娜", "美妆蛋", "碧欧泉", "娇韵诗", "迪奥", "杜比丽夫", "雅诗兰黛", "馥蕾诗", "纪梵希", "古驰", "朗仕", "兰蔻", "罗意威", "玫珂非",
				"玛丽黛佳玩色系列", "欧树"
			];
			for (var i = 0; i < 16; i++) {
				$(".floor-2 .hot-brands").eq(0).append('<li><img src="assert/img/HomePage/brands/brands' + i +
						'.png" ><div class="shade"> <div>' +
					hotBrands[i] + '</div> <a class = "check-brands"href = "" > 点击查看 </a> </div></li > '
				)
			}
			var exclusiveBrands = ["纪梵希", "古驰", "朗仕", "兰蔻", "罗意威", "玫珂非", "玛丽黛佳玩色系列", "欧树", "佩妍丽", "塞巴斯汀", "丝芙兰", "资生堂", "植村秀",
				"SK-II", "SP", "蒂芙尼",
			]
			for (var i = 8; i < 24; i++) {
				$(".floor-2 .hot-brands").eq(1).append('<li><img src="assert/img/HomePage/brands/brands' + i +
						'.png" ><div class="shade"> <div>' +
					exclusiveBrands[i - 8] + '</div> <a class = "check-brands"href = "" > 点击查看 </a> </div></li > '
				)
			}
			$(".hot-brands li").hover(function() {
				$(this).find(".shade").show();
				$(this).siblings().find(".shade").hide();
			}, function() {
				$(this).find(".shade").hide();
			})
			//精品推荐
			$(".picks-content .picks-list li").hover(function() {
				$(this).find("img").stop().animate({
					right: "5px",
				})
			}, function() {
				$(this).find("img").stop().animate({
					right: "0px",
				})
			})
			//护肤品类~美发护发品类
			$(".categoryProduct li").hover(function() {
				$(this).find("img").stop().animate({
					right: "15px",
				})
			}, function() {
				$(this).find("img").stop().animate({
					right: "0px",
				})
			})
			//左侧导航栏+右侧工具栏
			var sprite =document.querySelectorAll(".sprite-title");
			$(window).scroll(function () {
				 scrollTop =$(this).scrollTop();
				 var spriteTitle =$(".sprite-title");
// 				console.log(offsetTop);
				// console.log(scrollTop);
				if(scrollTop>663){
					$(".toolbar").show();
				}
				else{
				$(".toolbar").stop().fadeOut(50);
				}
				if(scrollTop>713){
					$(".fixedTop").stop().slideDown();
				}
				else{
					$(".fixedTop").stop().slideUp();
				}
				if(scrollTop>1418){
					$(".fixed-left").show();
				}
				else{
					$(".fixed-left").hide();
				}
				for (var i = 2; i < sprite.length-1; i++) {
					if(scrollTop>(spriteTitle.eq(i).offset().top-370)){
					$(".fixed-left li").eq(i-2).addClass("active").siblings("li").removeClass("active");
					}
				}
				if(scrollTop>6452){
					$(".fixed-left li").removeClass("active");
				}
			})
			$(".toolbar li").eq(4).click(function () {
				$("html,body").stop().animate({
					scrollTop:0,
				})
			})
			$(".fixed-left li").click(function () {
				var index =$(this).index();
				var top= $(".sprite-title").eq(index+2).offset().top;
				$("html,body").stop().animate({
					scrollTop:top-90,
				},500)
				
			})
			//搜索框
			$("#int").click(function() {
				$(".top_search_int_arise").css("display", "block")
			})
			$(".top_search_int_arise").mouseleave(function() {
				$(".top_search_int_arise").css("display", "none")
			})
			//浮动搜索框
			$("#searchBox").click(function () {
				$(".top_search_int_arise").show();
			})
			$("#searchBox").mouseleave(function () {
				$(".top_search_int_arise").hide();
			})
			
			// 链接修改
			$(".floor-2 .hot-brands a").attr("href","list/");
			// $(".top_allproducts a").attr("href","List.html");
			
			
			})
			
			//java
			//添加头部
			addHead();
			function addHead(){
				$.ajax({
					post:"get",
					url:"findCategoryChild/",
					success:function(res){
						$("body").prepend(res);
						insertSlideBox();
					}
				})
			}
			
			function insertSlideBox(){
				<!-- 在head.jsp插入轮播 -->
				$(".top_allproducts>.container").append(`
						<!-- 大轮播图 -->
					<div id="slideBox" class="slideBox slideBox-position">
						<div class="hd">
							<ul>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
						<div class="bd">
							<ul>
								<li><a href=""><img src="assert/img/HomePage/slider/slider2.jpg" /></a></li>
								<li><a href=""><img src="assert/img/HomePage/slider/slider3.jpg" /></a></li>
								<li><a href=""><img src="assert/img/HomePage/slider/slider1.jpg" /></a></li>
							</ul>
						</div>

						<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
						<a class="prev" href="javascript:void(0)"><span class="prev-content"></span>
						</a>
						<a class="next" href="javascript:void(0)">
							<span class="next-content"></span></a>
					</div>
	`);
				$(".slideBox").slide({
					mainCell: ".bd ul",
					autoPlay: true
				});
			}
			
		
			
		</script>
	</body>
</html>

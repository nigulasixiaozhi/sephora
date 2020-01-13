<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<jsp:include page="/base.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/css/reset.css" />
<link rel="stylesheet" type="text/css" href="assert/css/head/Genhead.css" />
<link rel="stylesheet" type="text/css" href="assert/css/List/list.css" />
</head>
<body>
	<!-- 筛选 -->
	<div class="screen">
		<div class="container">
			<!-- 顶部小选项 -->
			<div class="screen_opti">
				<div class="screen_opti_one fl">
					<a href="#">首页</a> <span class="">&gt;</span>
				</div>
				<div class="screen_opti_two fl">
					<a href="#">香水</a> <i class="icon_option icon_flag"></i>
				</div>
				<div class="screen_opti_zero fl">&gt;</div>
				<div class="screen_opti_three fl">
					<a href="#">女士</a> <i class="icon_option icon_flag"></i>
				</div>
				<div class="screen_opti_zero fl">&gt;</div>
				<div class="screen_opti_four fl">
					<a href="#">淡香</a> <i class="icon_option icon_flag"></i>
				</div>
				<div class="screen_opti_five fr">共65件商品</div>
				<div class="clear"></div>
			</div>
			<!-- 品牌logo -->
			<div class="screen_logo">
				<div class="screen_logo_brand fl">品牌</div>
				<div class="screen_logo_logo fl clearfix">
					<div class="logo fl">
						<img src="assert/img/List/maisonmargiela_144X60.png">
						<div class="txt">Maison Margiela</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/gucci_144X60.png">
						<div class="txt">GUCCI</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/dior_144X60.png">
						<div class="txt">DIOR</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/bvlgari_144X60.png">
						<div class="txt">BVLGARI</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/marcjacobs_144X60.png">
						<div class="txt">MARCJACOBS</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/kenzo_144X60.png">
						<div class="txt">KENZO</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/burberry_144X60.png">
						<div class="txt">BURBERRY</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/givenchy_144X60.png">
						<div class="txt">GIVENCHY</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/chloe_144X60.png">
						<div class="txt">GUCCI</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/acquadiparma_144X60.png">
						<div class="txt">GUCCI</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/guerlain_144X60.png">
						<div class="txt">GUCCI</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/prada_144X60.png">
						<div class="txt">GUCCI</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/ysl_144X60.png">
						<div class="txt">GUCCI</div>
					</div>
					<div class="logo fl">
						<img src="assert/img/List/loewe_144X60.png">
						<div class="txt">LOEWE</div>
					</div>
					<!-- <div class="clear"> </div> -->
				</div>

				<!-- 多选 -->
				<div class="screen_logo_txt fr">
					<div class="screen_logo_txt_muls fl">
						<i class="icon_option icon_puls"></i> <a href="#">多选</a>
					</div>
					<div class="screen_logo_txt_mulg fl">
						<a href="#">更多</a> <i class="icon_option icon_flag"></i>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<!-- 选项块	 -->
			<div class="screen_option">
				<div class="container">
					<!-- 第一行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">适用人群</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>女士<i class="icon_option icon_x"></i></span></li>
								<li><span>男士<i class="icon_option icon_x"></i></span></li>
								<li><span>各种人群<i class="icon_option icon_x"></i></span></li>
							</ul>
						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <span>多选</span>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第2行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">适用部位</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>面部<i class="icon_option icon_x"></i></span></li>
								<li><span>身体<i class="icon_option icon_x"></i></span></li>
								<li><span>颈部<i class="icon_option icon_x"></i></span></li>
								<li><span>胸部<i class="icon_option icon_x"></i></span></li>
								<li><span>手部<i class="icon_option icon_x"></i></span></li>
							</ul>

						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <span>多选</span>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第3行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">价格</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>100-299元<i class="icon_option icon_x"></i></span></li>
								<li><span>299-599元<i class="icon_option icon_x"></i></span></li>
								<li><span>599-800元<i class="icon_option icon_x"></i></span></li>
								<li><span>800元以上<i class="icon_option icon_x"></i></span></li>
							</ul>
						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <span>多选</span>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第4行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">适合肤质</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>各种肤质<i class="icon_option icon_x"></i></span></li>
							</ul>

						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <span>多选</span>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第一行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">质地</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>水液<i class="icon_option icon_x"></i></span></li>
								<li><span>喷雾<i class="icon_option icon_x"></i></span></li>
							</ul>
						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <a href="#">多选</a>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第一行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">规划范围</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>套装<i class="icon_option icon_x"></i></span></li>
								<li><span>16-30ML<i class="icon_option icon_x"></i></span></li>
								<li><span>31-50ML<i class="icon_option icon_x"></i></span></li>
							</ul>
						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <a href="#">多选</a>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第一行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">香调</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>花香调<i class="icon_option icon_x"></i></span></li>
								<li><span>柑橘香调<i class="icon_option icon_x"></i></span></li>
								<li><span>木制香调<i class="icon_option icon_x"></i></span></li>
								<li><span>西普香调<i class="icon_option icon_x"></i></span></li>
								<li><span>东方香调<i class="icon_option icon_x"></i></span></li>
							</ul>
						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <a href="#">多选</a>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第一行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">包装</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>喷雾型<i class="icon_option icon_x"></i></span></li>
								<li><span>滚珠型<i class="icon_option icon_x"></i></span></li>
							</ul>
						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <a href="#">多选</a>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第一行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">香感</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>优雅<i class="icon_option icon_x"></i></span></li>
								<li><span>清新<i class="icon_option icon_x"></i></span></li>
								<li><span>时尚<i class="icon_option icon_x"></i></span></li>
								<li><span>性感<i class="icon_option icon_x"></i></span></li>
								<li><span>甜美<i class="icon_option icon_x"></i></span></li>
								<li><span>魅惑<i class="icon_option icon_x"></i></span></li>
								<li><span>可爱<i class="icon_option icon_x"></i></span></li>
							</ul>
						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <a href="#">多选</a>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 第一行 -->
					<div class="screen_option_line">
						<div class="screen_option_line_le fl">适合场合</div>
						<div class="screen_option_line_con fl">
							<ul>
								<li><span>约会<i class="icon_option icon_x"></i></span></li>
								<li><span>户外<i class="icon_option icon_x"></i></span></li>
								<li><span>职场<i class="icon_option icon_x"></i></span></li>
								<li><span>派对/舞会<i class="icon_option icon_x"></i></span></li>
							</ul>
						</div>
						<div class="screen_option_line_con_x fl clearfix">
							<div class="screen_option_line_ri_que fl">确定</div>
							<div class="screen_option_line_ri_canc fl">取消</div>
						</div>
						<div class="screen_option_line_ri fr">
							<i class="icon_option icon_puls"></i> <a href="#">多选</a>
						</div>
						<div class="clear"></div>
					</div>
					<!-- 更多选项 -->
					<div class="screen_more">
						<span>更多选项</span> <i class="icon_option icon_flag"></i> <i class="icon_option icon_up"></i>
					</div>

				</div>
			</div>
			<!-- 商品界面 -->
			<div class="screen_commod">
				<!-- 综合，销量行 -->
				<div class="screen_commod_up">
					<!-- 左侧 -->
					<div class="screen_commod_up_le fl">
						<ul class="screen_commod_up_le_one">
							<li class="active"><a href="#">综合</a> <i class="icon_option icon_arrow"></i></li>
							<li><a href="#">销量</a> <i class="icon_option icon_arrow"></i> <span class="screen_commod_up_le_one_mark"></span></li>
							<li><a href="#">新品</a> <i class="icon_option icon_arrow"></i> <span class="screen_commod_up_le_one_mark"></span></li>
							<li><a href="#">人气</a> <i class="icon_option icon_arrow"></i> <span class="screen_commod_up_le_one_mark"></span></li>
							<li><a href="#">价格</a> <i class="icon_option icon_arrow"></i></li>

						</ul>
					</div>
					<!-- 仅看有货 -->
					<div class="screen_commod_up_con fl">
						<input type="checkbox" class="int" name="" id="" value="" /> <a href="#">仅看有货</a>
					</div>
					<!-- 页码 -->
					<div class="screen_commod_up_num fl">
						<span class="at">1</span>/3
					</div>
					<!-- 翻页 -->
					<div class="screen_commod_up_ri fl">
						<i class="icon_arr icon_le"></i> <i class="icon_arr icon_ri"></i>
					</div>

					<div class="clear"></div>
				</div>

				<!-- 综合，销量行    隐藏版 -->
				<div class="screen_commod_up_c">
					<!-- 左侧 -->
					<div class="screen_commod_up_le fl">
						<ul class="screen_commod_up_le_one">
							<li class="active"><a href="#">综合</a> <i class="icon_option icon_arrow"></i></li>
							<li><a href="#">销量</a> <i class="icon_option icon_arrow"></i> <span class="screen_commod_up_le_one_mark"></span></li>
							<li><a href="#">新品</a> <i class="icon_option icon_arrow"></i> <span class="screen_commod_up_le_one_mark"></span></li>
							<li><a href="#">人气</a> <i class="icon_option icon_arrow"></i> <span class="screen_commod_up_le_one_mark"></span></li>
							<li><a href="#">价格</a> <i class="icon_option icon_arrow"></i></li>

						</ul>
					</div>
					<!-- 仅看有货 -->
					<div class="screen_commod_up_con fl">
						<input type="checkbox" class="int" name="" id="" value="" /> <a href="#">仅看有货</a>
					</div>
					<!-- 页码 -->
					<div class="screen_commod_up_num fl">
						<span class="at">1</span>/3
					</div>
					<!-- 翻页 -->
					<div class="screen_commod_up_ri fl">
						<i class="icon_arr icon_le"></i> <i class="icon_arr icon_ri"></i>
					</div>

					<div class="clear"></div>
				</div>

				<!-- 商品 -->
				<div class="screen_commod_con">
					<c:if test="${!empty productList}">
						<c:set value="${productList.size()%5==0?productList.size()/5:productList.size()/5+1}" var="line"></c:set>
						<c:set value="0" var="begin"></c:set>
						<c:set value="4" var="end"></c:set>
						<c:forEach var="list" begin="1" end="${line}">
							<!-- 一行 -->
							<div class="line">
								<c:forEach items="${productList}" var="list" begin="${begin}" end="${end}">
									<!-- 一个香水 -->
									<div class="screen_commod_con_pie fl">
										<div class="screen_commod_con_pie_one">
											<a href="details/${list.rowId }"> <!-- 图片 -->
												<div class="screen_commod_con_pie_img">
													<img src="${list.imgPath }" />
												</div>
												<div class="screen_commod_con_pie_name">${list.brandName }</div>
												<div class="screen_commod_con_pie_des">
													<a href="details/${list.rowId }"> ${list.productName } </a>
												</div>
												<div class="screen_commod_con_pie_pri">￥${list.productPrice }</div> <!-- 立即购买 -->
												<div class="screen_commod_con_pie_cov">
													<img src="assert/img/List/category_purchace_bag.png"> <a href="">立即购买</a>
												</div>
											</a>
										</div>
									</div>
								</c:forEach>
								<c:set value="${begin+end+1}" var="begin"></c:set>
								<c:set value="${end+5}" var="end"></c:set>
								<div class="clear"></div>
							</div>
						</c:forEach>
					</c:if>
				</div>
				<!-- 底标 -->
				<div class="screen_commod_down">
					<!-- 上一页 -->
					<div class="screen_commod_down_le fl">
						<a href="#">&lt; 上一页</a>
					</div>
					<!-- 页码 -->
					<div class="screen_commod_down_con fl">
						<a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
					</div>
					<!-- 下一页 -->
					<div class="screen_commod_down_ri fl">
						<a href="#">下一页 &gt;</a>
					</div>
					<div class="screen_commod_down_num fl">
						到第 <input type="" name="" id="" value="" class="num" /> 页
					</div>
					<div class="screen_commod_down_sure fl">
						<a href="#">确定</a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>


	<!-- 脚部 -->
	<%@ include file="/foot.jsp"%>


	<!-- 右侧导航栏 -->
	<ul class="toolbar">
		<li><a href=""> <span class="toolbar-text">个人信息</span> <em class="sprite-toolbar person"></em>
		</a></li>
		<li><a href=""> <span class="toolbar-text">购物车</span> <em class="sprite-toolbar shoping"></em>
		</a></li>
		<li><a href=""> <span class="toolbar-text">联系客服</span> <em class="sprite-toolbar service"></em>
		</a></li>
		<li><a href=""> <span class="toolbar-text">移动丝芙兰</span> <em class="sprite-toolbar mobile"></em>
		</a></li>
		<li><a href="javascript:;"> <span class="toolbar-text">返回顶部</span> <em class="sprite-toolbar return"></em>
		</a></li>
	</ul>
	<script type="text/javascript" src="assert/js/jquery-3.3.1.min.js"></script>
	<script src="assert/lib/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="assert/js/List/list.js"></script>
	<script type="text/javascript">
		jQuery(".txtScroll-top").slide({
			mainCell : ".bd ul",
			autoPage : true,
			effect : "topLoop",
			autoPlay : true,
			vis : 1,
			delayTime : 1000,
		});
	</script>
	<script type="text/javascript">
		//搜索框
		$(".int").click(function() {
			$(".top_search_int_arise").css("display", "block")
		})
		$(".top_search_int_arise").mouseleave(function() {
			$(".top_search_int_arise").css("display", "none")
		})
		//左侧导航栏+右侧工具栏
		var sprite = document.querySelectorAll(".sprite-title");
		$(window)
				.scroll(
						function() {
							scrollTop = $(this).scrollTop();
							var spriteTitle = $(".sprite-title");
							if (scrollTop > 663) {
								$(".toolbar").show();
							} else {
								$(".toolbar").stop().fadeOut(50);
							}
							if (scrollTop > 713) {
								$(".fixedTop").stop().slideDown();
							} else {
								$(".fixedTop").stop().slideUp();
							}
							if (scrollTop > 1418) {
								$(".fixed-left").show();
							} else {
								$(".fixed-left").hide();
							}
							for (var i = 2; i < sprite.length - 1; i++) {
								if (scrollTop > (spriteTitle.eq(i).offset().top - 370)) {
									$(".fixed-left li").eq(i - 2).addClass(
											"active").siblings("li")
											.removeClass("active");
								}
							}
							if (scrollTop > 6452) {
								$(".fixed-left li").removeClass("active");
							}
							$(".toolbar li").eq(4).click(function() {
								$("html,body").stop().animate({
									scrollTop : 0,
								})
							})
						})
		// 链接修改
		// $(".top_allproducts a").attr("href","List.html");

		//java
		//添加头部
		//addHead();
		function addHead() {
			$.ajax({
				post : "get",
				url : "findCategoryChild/",
				success : function(res) {
					$("body").prepend(res);
				}
			})
		}
	</script>
</body>
</html>

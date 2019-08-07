<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="com.cafe24.ypshop.frontend.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
	<title>ypshop</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Weblog a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/single.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/join.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/product-style.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/assets/css/flexslider.css" rel='stylesheet' type='text/css' media="screen"/>
	<link href="${pageContext.request.contextPath}/assets/css/font-awesome.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<script src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.9.0.js"></script>
</head>

<body>
	<!-- mian-content -->
    <div class="main-banner" id="home" style="text-align: center; height: 100px;">
        <!-- header -->
        <c:import url='/WEB-INF/views/includes/header.jsp'>
    		<c:param name="menu" value="login"/>
    	</c:import>
    </div>

	<div class="main">
<!---728x90--->


	${ imageList}
	${ productOptionList}
	${ productVO.name}


		<h1>상품 상세</h1>
<!---728x90--->

		<div class="w3_agile_main_grids">
			<div class="w3layouts_main_grid_left">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="w3ls_main_grid_left_grid">
									<img src="images/1.jpg" alt=" " />
								</div>
							</li>
							<li>
								<div class="w3ls_main_grid_left_grid">
									<img src="images/2.jpg" alt=" " />
								</div>
							</li>
							<li>
								<div class="w3ls_main_grid_left_grid">
									<img src="images/3.jpg" alt=" " />
								</div>
							</li>
						</ul>
					</div>
				</section>
			</div>
			<div class="w3_main_grid_right">
				<div class="w3l_main_grid_right_grid">
						<div class="agileinfo_search">
							<form action="#" method="post">
								<input type="search" name="Search" placeholder="Search..." required="">
								<input type="submit" value=" ">
							</form>
						</div>
						<div class="clear"> </div>
					<div class="w3_agileits_main_grid_right_info">
						<h2>Women's and Men's Wear</h2>
						<h3>Nulla consequat metus sit amet sodales gravida.</h3>
						<p>Nullam sem nisi, imperdiet vitae accumsan et, pellentesque vitae turpis. 
							Cum sociis natoque penatibus et magnis dis parturient montes.</p>
					</div>
					<div class="agile_occasion_quantity">
						<div class="agile_occasion_quantity_left">
							<h4>Occasion</h4>
							<div class="agileits_w3layouts_radio_button">
								<div class="w3_agile_radio">
									<label class="radio"><input type="radio" name="radio" checked=""><i></i>Casual Wear</label>
								</div>
								<div class="w3_agile_radio">
									<label class="radio"><input type="radio" name="radio"><i></i>Party Wear</label>
								</div>
								<div class="w3_agile_radio">
									<label class="radio"><input type="radio" name="radio"><i></i>Formal Wear</label>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
						<div class="agile_occasion_quantity_right">
							<h4>Quality</h4>
							<div class="w3layouts_quality"> 
								<div class="w3_quality_select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="agile_price_social">
						<div class="agile_price">
							<h3>$159.00</h3>
						</div>
						<div class="w3_agile_social">
							<ul>
								<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
								<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
								<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
								<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
								<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
							</ul>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="w3_agileits_add_to_cart">
						<div class="w3_cart">
							<a href="#">add to bag<i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
						</div>
						<div class="w3l_wishlist">
							<a href="#">add to wishlist<i class="fa fa-heart-o" aria-hidden="true"></i></a>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
			</div>
			<div class="clear"> </div>
		</div>
	</div>
<!-- quality -->
	<script>
		$('.value-plus').on('click', function(){
			var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
			divUpd.text(newVal);
		});

		$('.value-minus').on('click', function(){
			var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
			if(newVal>=1) divUpd.text(newVal);
		});
	</script>
<!-- //quality -->
<!-- flexSlider -->
	<script defer src="${pageContext.request.contextPath}/assets/js/flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	</script>
<!-- //flexSlider -->
</body>
</html>
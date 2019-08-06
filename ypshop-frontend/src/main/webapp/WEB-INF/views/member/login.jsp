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
    		<c:param name="menu" value="join"/>
    	</c:import>
    </div>

	<section class="main-content-w3layouts-agileits">
		<div class="container">
			<h3 class="tittle">로그인</h3>
				<div class="inner-sec" style="width:500px; margin: 30px auto;">
			<div class="login p-5 bg-light mx-auto mw-100">
				<form name="joinform" action="${pageContext.servletContext.contextPath}/member/auth" method="post">
							<div class="form-row">
								<div style="width:100%;">
										<label for="id">아이디</label><br>
										<input type="text" id="id" name="id" style="width:100%;">
								</div>
							</div>
							<br>
							<div class="form-row">
								<div style="width:100%;">
										<label for="password">비밀번호</label><br>
										<input type="password" id="password" name="password" style="width:100%;">
								</div>
							</div>
							
							<div style="text-align: center; margin-top: 30px;">
								<button type="submit" class="btn btn-primary submit mb-4" style=" width:100%;">로그인</button>
							</div>
						</form>
					</div>
			</div>
		</div>
	</section>
	
	<!-- footer -->
	
		
	<!--/ start-smoth-scrolling -->
	<script src="${pageContext.request.contextPath}/assets/js/move-top.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!--// end-smoth-scrolling -->

	<script>
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- //Custom-JavaScript-File-Links -->
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>


</body>

</html>
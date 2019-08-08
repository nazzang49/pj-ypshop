<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
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

 <%
    String clientId = "JKX_G4a7I3XWnU1fAqpv";
    String redirectURI = URLEncoder.encode("http://localhost:8090/ypshop-frontend/", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
 	<!-- mian-content -->
    <div class="main-banner" id="home" style="text-align: center; height: 100px;">
        <!-- header -->
        <c:import url='/WEB-INF/views/includes/header.jsp'>
    		<c:param name="menu" value="login"/>
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
										<input type="text" id="id" name="id" style="height:40px; width:100%;">
								</div>
							</div>
							<br>
							<div class="form-row">
								<div style="width:100%;">
										<label for="password">비밀번호</label><br>
										<input type="password" id="password" name="password" style="height:40px; width:100%;">
								</div>
							</div>
							<div style="margin-top:20px;">
								 <a href="<%=apiURL%>"><img height="70px;" width="100%" src="${pageContext.servletContext.contextPath}/assets/images/naver-logo.PNG"/></a>
								 </div>
								<!-- 네이버아이디로로그인 버튼 노출 영역 -->
								<script type="text/javascript">
							 		var naver_id_login = new naver_id_login("Client ID", "CallBack URL");	// Client ID, CallBack URL 삽입
																		// 단 'localhost'가 포함된 CallBack URL
							 		var state = naver_id_login.getUniqState();
									
							 		naver_id_login.setButton("white", 2, 40);
							 		naver_id_login.setDomain("서비스 URL");	//  URL
							 		naver_id_login.setState(state);
							 		naver_id_login.setPopup();
							 		naver_id_login.init_naver_id_login();
								</script>
							
							
							<div style="text-align: center; margin-top: 30px;">
								<button type="submit" class="btn btn-primary submit mb-4" style="height: 60px; width:100%; font-size:20px;">로그인</button>
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
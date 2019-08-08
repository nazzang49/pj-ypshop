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
	    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	    
	<script src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.9.0.js"></script>
</head>

<body style="font-family: 'Noto Sans KR', sans-serif;">



<script>
	//수량 증가 및 감소
	$(function(){
		
		//감소
		$('.value-minus').click(function(){
			
			//옵션 선택 여부
			var radios = document.getElementsByClassName('productOption');
			var productOptionNo = '';
			for(var i=0;i<radios.length;i++){
				if(radios[i].checked==true){
					productOptionNo = radios[i].value;
					break;
				}
			}
			
			if(productOptionNo==''){
				alert("옵션 선택 필수");
				return;
			}
			
			var cartAmount = $('#cartAmount').val();
			if(cartAmount==1){
				alert('최소 1개 이상');
				return;
			}
			cartAmount--;
			$('#cartAmount').val(cartAmount);
		});
		
		//증가
		$('.value-plus').click(function(){
			var cartAmount = $('#cartAmount').val();
			
			//옵션 선택 여부
			var radios = document.getElementsByClassName('productOption');
			var productOptionNo = '';
			for(var i=0;i<radios.length;i++){
				if(radios[i].checked==true){
					productOptionNo = radios[i].value;
					break;
				}
			}
			
			if(productOptionNo==''){
				$('.value').html(1);
				alert("옵션 선택 필수");
				return;
			}
			
			//재고수량 비교
			var remainAmount = $('#remainAmount'+productOptionNo).val();
			
			alert("재고 수량 : "+remainAmount);
			
			if(cartAmount > remainAmount){
				$('.value').html(remainAmount);
				alert('재고 부족');
				return;
			}
			
			if(cartAmount==10){
				$('.value').html(10);
				alert('최대 10개 이하');
				return;
			}
			cartAmount++;
			
			alert("카트 수량 : "+cartAmount);
			$('#cartAmount').val(cartAmount);
		});
	})
	
	
	
	
	//장바구니 추가 by Ajax
	function addCart(){
		
		var radios = document.getElementsByClassName('productOption');
		var productOptionNo = '';
		for(var i=0;i<radios.length;i++){
			if(radios[i].checked==true){
				productOptionNo = radios[i].value;
				break;
			}
		}
		
		//상품옵션이 여러개 >> id로 구분 X
		var cartAmount = $('#cartAmount').val();
		var cartPrice = $('#cartPrice').val();
		
		$.ajax({
			url:"${pageContext.request.contextPath }/api/order/cart/add",
			type:"post",
			dataType:"json",
			data:{"productOptionNo":productOptionNo, "cartAmount":cartAmount, "cartPrice":cartPrice},
			success:function(response){
				if(response.result!="success"){
					alert("통신 실패");
					return;
				}
				if(response.data==false){
					alert("장바구니 추가 실패");
					return;
				}
				alert("장바구니 추가 성공");
			},
			error:function(error){
				console.log(error);
			}
		});
	}
	

</script>

	<!-- mian-content -->
    <div class="main-banner" id="home" style="text-align: center; height: 100px;">
        <!-- header -->
        <c:import url='/WEB-INF/views/includes/header.jsp'>
    		<c:param name="menu" value="login"/>
    	</c:import>
    </div>

	<div class="main">
<!---728x90--->
		<h1>상품 상세</h1>
<!---728x90--->


		<!-- 이미지 슬라이더 -->
		<div class="w3_agile_main_grids">
			<div class="w3layouts_main_grid_left">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
						<c:forEach items="${imageList }" var="ivo">
							<li>
								<!-- 썸네일 이미지 -->
								<div class="w3ls_main_grid_left_grid">
									<img src="${pageContext.request.contextPath}/assets${ivo.url}" alt="상품 이미지" style="padding-right:48px;"/>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
				</section>
			</div>
			<div class="w3_main_grid_right">
				<div class="w3l_main_grid_right_grid">
						<div class="agileinfo_search">
							<form action="#" method="post">
								<input type="search" name="searchKwd" placeholder="타입별 상품 검색" required="">
								<input type="submit" value="search" style="color:white;">
							</form>
						</div>
						<div class="clear"> </div>
					<div class="w3_agileits_main_grid_right_info">
						<h2>${productVO.name }</h2>
						<h3>Description</h3>
						<p>${productVO.shortDescription }</p>
					</div>
									
					<div class="agile_occasion_quantity">
						<div class="agile_occasion_quantity_left">
							<!-- 1개씩 추가 가정 -->
							<h4>상품 옵션 및 재고 현황</h4>
							<div class="agileits_w3layouts_radio_button">
								<c:forEach items="${productOptionList }" var="productOptionVO">
								<div class="w3_agile_radio">
									<label class="radio"><input type="radio" class="productOption" value="${productOptionVO.no }"><i></i>
									${productOptionVO.firstOptionName }, ${productOptionVO.secondOptionName } / ${productOptionVO.remainAmount }</label>
									<input type="hidden" id="remainAmount${productOptionVO.no }" value="${productOptionVO.remainAmount }">
								</div>
								<div class="clear"> </div>
								</c:forEach>
							</div>
						</div>
						<div class="agile_occasion_quantity_right">
							<h4>수량</h4>
							<div class="w3layouts_quality">
								<div class="w3_quality_select">
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<input type="hidden" id="cartAmount" value="1">
									<div class="entry value-plus">&nbsp;</div>
								</div>
							</div>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="agile_price_social">
						<div class="agile_price">
							<h3>${productVO.price }원</h3>
							<input type="hidden" id="cartPrice" value="${productVO.price }">
						</div>
						<div class="w3_agile_social">
							<ul>
								<li><span>1회 최대 주문 가능 수량 10개</span></li> 
							</ul>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="w3_agileits_add_to_cart">
						<div class="w3_cart">
						
						
						<!-- 장바구니 담기 by ajax-->
							<a href="javascript:addCart()">장바구니 담기</a>
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
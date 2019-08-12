<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="sidebar-menu">
	<div class="logo">
		<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
		</a> <a href="#"> <span id="logo"></span> <!--<img id="logo" src="" alt="Logo"/>-->
		</a>
	</div>
	<div class="menu">
		<ul id="menu">
			<li id="menu-home" id="member-list"><a
				href="${pageContext.request.contextPath}/admin/user"><i
					class="fa fa-tachometer"></i><span>회원관리</span></a></li>
			<li><a href="${pageContext.request.contextPath}/admin/product"><i
					class="fa fa-cogs"></i><span>상품관리</span></a></li>
			<li><a href="maps.html"><i class="fa fa-map-marker"></i><span>진열관리</span></a></li>
			<li id="menu-academico"><a href="#"><i
					class="fa fa-file-text"></i><span>옵션관리</span></a></li>

			<li><a href="charts.html"><i class="fa fa-bar-chart"></i><span>이미지관리</span></a></li>
			<li><a href="${pageContext.request.contextPath}/admin/order"><i class="fa fa-envelope"></i><span>주문관리</span></a>

			</li>
			<li><a href="#"><i class="fa fa-cog"></i><span>System</span></a>

			</li>
			<li><a href="#"><i class="fa fa-shopping-cart"></i><span>E-Commerce</span></a>

			</li>
		</ul>
	</div>
</div>
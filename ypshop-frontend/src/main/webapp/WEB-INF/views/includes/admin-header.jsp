<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="header-left">
	<div class="logo-name">
		<a href="${pageContext.request.contextPath}">
			<h1>YPSHOP</h1>
		</a>
	</div>

	<form>
		<select name="searchType"
			style="float: left; margin-top: 9px; padding: 9px 0;">
			<option value="">검색 타입</option>
			<option value="name">이름</option>
			<option value="id">아이디</option>
		</select>
		<!--search-box, 회원 기준-->
		<input type="text" placeholder="search" name="searchKwd"
			style="margin-top: 8px; height: 42px;">
		<button class="btn btn-info" type="submit"
			style="height: 45px;">검색</button>
	</form>
	<div class="clearfix"></div>

</div>
<div class="header-right" style="margin-top: 15px;">

	<form action="${pageContext.request.contextPath}/admin/naverSearch"
		method="post">
		<input type="text" name="searchKwd" id="search-by-naver"
			placeholder="검색어 관련 기간 및 카테고리별 쇼핑 인사이트"
			style="width: 400px; height: 40px;"> <input type="submit"
			class="btn btn-primary" value="네이버 쇼핑 인사이트 확인" style="height: 45px;">
	</form>

	<div class="clearfix"></div>
</div>
<div class="clearfix"></div>

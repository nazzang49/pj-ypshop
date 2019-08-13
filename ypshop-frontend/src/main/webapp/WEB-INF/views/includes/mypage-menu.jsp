<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="snbArea">
	<ul id="snb">
		<li class=""><a id="QA_Lnb_Menu2488"
			href="${pageContext.request.contextPath}/member/mypage/<sec:authentication property="principal.username"/>" menuno="2488" treeno="2711"
			class="member" targetframe="F"> 장바구니 </a></li>

		<!-- 주문 및 주문 상세 동시 처리 -->
		<li class=""><a id="QA_Lnb_Menu2488"
			href="${pageContext.request.contextPath}/member/order/list" menuno="2488"
			treeno="2711" class="member" targetframe="F"> 주문내역 </a></li>

		<li class=""><a id="QA_Lnb_Menu2488"
			href="/admin/php/shop1/c/member_admin_l.php" menuno="2488"
			treeno="2711" class="member" targetframe="F"> 포인트내역 </a></li>

		<li class=""><a id="QA_Lnb_Menu2488"
			href="/admin/php/shop1/c/member_admin_l.php" menuno="2488"
			treeno="2711" class="member" targetframe="F"> 쿠폰내역 </a></li>

		<li class=""><a id="QA_Lnb_Menu2488"
			href="/admin/php/shop1/c/member_admin_l.php" menuno="2488"
			treeno="2711" class="member" targetframe="F"> 회원 정보 조회 및 수정 </a></li>

		<li class=""><a id="QA_Lnb_Menu2488"
			href="/admin/php/shop1/c/member_admin_l.php" menuno="2488"
			treeno="2711" class="member" targetframe="F"> 내가 쓴 게시물 </a></li>
	</ul>
</div>
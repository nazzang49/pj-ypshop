<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="header">
    <div class="container-fluid px-lg-5">
        <nav class="py-4">
            <div id="logo">
                <h1><a href="index.html">CAFE24</a></h1>
            </div>
            <label for="drop" class="toggle">Menu</label>
            <input type="checkbox" id="drop" />
            <div>
            <ul class="menu mt-2">
            	<!-- spring security -->
            	<c:choose>
            	<c:when test="${param.menu == 'main' }">
            		<li class="active"><a href="${pageContext.servletContext.contextPath}">메인</a></li>
            	    <sec:authorize access="isAuthenticated()">
            	    <li><a href="${pageContext.servletContext.contextPath}/member/info/<sec:authentication property="principal.username"/>">마이페이지</a></li>
	                <li><a href="${pageContext.servletContext.contextPath}/member/logout">로그아웃</a></li>
	                </sec:authorize>
	                <sec:authorize access="!isAuthenticated()">
	                <li><a href="${pageContext.servletContext.contextPath}/member/join">회원가입</a></li>
	                <li><a href="${pageContext.servletContext.contextPath}/member/login">로그인</a></li>
	                </sec:authorize>
	                <sec:authorize access="hasRole('ADMIN')">
	                <li><a href="${pageContext.servletContext.contextPath}/admin">관리자 페이지</a></li>
	                </sec:authorize>
	            </c:when>
	            <c:when test="${param.menu == 'join' }">
            		<li><a href="${pageContext.servletContext.contextPath}">메인</a></li>
            	    <sec:authorize access="isAuthenticated()">
	                <li><a href="${pageContext.servletContext.contextPath}/member/info">마이페이지</a></li>
	                <li><a href="${pageContext.servletContext.contextPath}/member/logout">로그아웃</a></li>
	                </sec:authorize>
	                <sec:authorize access="!isAuthenticated()">
	                <li class="active"><a href="${pageContext.servletContext.contextPath}/member/join">회원가입</a></li>
	                <li><a href="${pageContext.servletContext.contextPath}/member/login">로그인</a></li>
	                </sec:authorize>
	                <li><a href="#">관리자 로그인</a></li>
	            </c:when>
	            <c:when test="${param.menu == 'info' }">
            		<li class="active"><a href="${pageContext.servletContext.contextPath}">메인</a></li>
            	    <sec:authorize access="isAuthenticated()">
	                <li class="active"><a href="${pageContext.servletContext.contextPath}/member/info">마이페이지</a></li>
	                <li><a href="${pageContext.servletContext.contextPath}/member/logout">로그아웃</a></li>
	                </sec:authorize>
	                <sec:authorize access="!isAuthenticated()">
	                <li><a href="${pageContext.servletContext.contextPath}/member/join">회원가입</a></li>
	                <li><a href="${pageContext.servletContext.contextPath}/member/login">로그인</a></li>
	                </sec:authorize>
	                <li><a href="#">관리자 로그인</a></li>
	            </c:when>
	           <c:when test="${param.menu == 'login' }">
            		<li class="active"><a href="${pageContext.servletContext.contextPath}">메인</a></li>
            	    <sec:authorize access="isAuthenticated()">
	                <li><a href="${pageContext.servletContext.contextPath}/member/info">마이페이지</a></li>
	                <li><a href="${pageContext.servletContext.contextPath}/member/logout">로그아웃</a></li>
	                </sec:authorize>
	                <sec:authorize access="!isAuthenticated()">
	                <li><a href="${pageContext.servletContext.contextPath}/member/join">회원가입</a></li>
	                <li class="active"><a href="${pageContext.servletContext.contextPath}/member/login">로그인</a></li>
	                </sec:authorize>
	            </c:when>
	            </c:choose>
            </ul>
            </div>
        </nav>
    </div>
</header>
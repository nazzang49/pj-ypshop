<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>

var productNo = ${productNo};

if(productNo!=null){
	alert("상품 추가 성공");
	location.href = "${pageContext.request.contextPath}/admin/product/"+productNo+"/productOption/add";
}else{
	alert("상품 추가 실패");
	history.back();
}
</script>

</body>
</html>
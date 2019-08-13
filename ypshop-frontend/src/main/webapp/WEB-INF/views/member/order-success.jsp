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
	var returnMsg = ${returnMsg};
	
	alert(returnMsg);
	
// 	if(flag){
// 		alert("주문 성공");
// 		window.close();
// 	}else{
// 		alert("주문 실패");
// 		history.back();
// 	}

</script>

</body>
</html>
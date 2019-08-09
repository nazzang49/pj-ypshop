<%@page import="com.cafe24.ypshop.frontend.service.MemberService"%>
<%@page import="com.cafe24.ypshop.frontend.service.CustomJsonParse"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ypshop</title>
</head>
<body>

<script>
	
	//getParameter by javascript
	function getParameterByName(name) {
		name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		results = regex.exec(location.search);
		return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
	
	var flag = getParameterByName('flag');
	var redirect = getParameterByName('redirect');
	
	if(flag=='true'){
		location.href="https://api.solapi.com/oauth2/v1/authorize?"+
	      			  "client_id=CIDK6CLROPWNPPCG&" +
	      			  "redirect_uri="+redirect+"&" +
	      			  "response_type=code&" +
	      			  "scope=message:write&" +
	      			  "state=ADFN31fmD1fa4";
	}

</script>

<%

String code = request.getParameter("code");
String apiURL="";
String access_token = "";

//코드 값 O >> 액세스 토큰 요청
if(code!=null){
	
	String clientId = "CIDK6CLROPWNPPCG";
    String clientSecret = "QA2KLYBNXB4O7LTTKSMSGAY2D5IPABXG";
    String redirectURI = "http://localhost:8090/ypshop-frontend/member/joinsuccess";
    apiURL = "https://api.solapi.com/oauth2/v1/access_token";

    String refresh_token = "";
    System.out.println("apiURL="+apiURL);
    try {
      URL url = new URL(apiURL);
      HttpURLConnection con = (HttpURLConnection)url.openConnection();
      
      Map<String,Object> params = new LinkedHashMap<>();
      params.put("client_id", clientId);
      params.put("client_secret", clientSecret);
      params.put("redirect_uri", redirectURI);
      params.put("code", code);
      params.put("grant_type", "authorization_code");
      
      StringBuilder postData = new StringBuilder();
      for(Map.Entry<String,Object> param : params.entrySet()) {
          if(postData.length() != 0) postData.append('&');
          postData.append(URLEncoder.encode(param.getKey(), "UTF-8"));
          postData.append('=');
          postData.append(URLEncoder.encode(String.valueOf(param.getValue()), "UTF-8"));
      }
      byte[] postDataBytes = postData.toString().getBytes("UTF-8");
      
      con.setRequestMethod("POST");
      con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      con.setRequestProperty("Content-Length", String.valueOf(postDataBytes.length));
      con.setDoOutput(true);
      con.getOutputStream().write(postDataBytes);

      int responseCode = con.getResponseCode();
      BufferedReader br;
      System.out.print("responseCode="+responseCode);
      
      if(responseCode==200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
      } else {  // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
      }
      String inputLine;
      StringBuffer res = new StringBuffer();
      while ((inputLine = br.readLine()) != null) {
        res.append(inputLine);
      }
      br.close();
      if(responseCode==200) {
    	  
    	  
    	CustomJsonParse cjp = new CustomJsonParse();
    	access_token = cjp.getAccessToken(res.toString());
    	
    	//문자 발송
    	MemberService.joinSuccessSms(access_token);
    	
      	}
    } catch (Exception e) {
      System.out.println(e);
    }
}

%>

<script>
	alert("회원가입 성공 >> solapi 웹문자 발송 완료 및 메인 이동");
	location.href="${pageContext.request.contextPath}";
</script>

</body>
</html>
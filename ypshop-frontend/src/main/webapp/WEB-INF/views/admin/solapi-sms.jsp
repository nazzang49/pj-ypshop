<%@page import="com.cafe24.ypshop.frontend.service.CustomJsonParse"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLEncoder"%>
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

<%

String code = request.getParameter("code");

System.out.println("코드 값 : "+code);

//발급된 코드 값이 있으면 >> 액세스 토큰 요청
if(code!=null){
	
	String clientId = "CIDK6CLROPWNPPCG";//애플리케이션 클라이언트 아이디값";
    String clientSecret = "CSLDKU0BZHLNOLOSKXMQHMSFGON5XZKQ";//애플리케이션 클라이언트 시크릿값";
    String redirectURI = URLEncoder.encode("http://localhost:8090/ypshop-frontend/admin/main","utf-8");
    String apiURL;
    apiURL = "https://api.solapi.net/oauth2/v1/access_token&";
    apiURL += "client_id=" + clientId;
    apiURL += "&client_secret=" + clientSecret;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&code=" + code;
    apiURL += "&grant_type=authorization_code";
    
    //발급 받을 액세스 토큰
    String access_token = "";
    String refresh_token = "";
    System.out.println("apiURL="+apiURL);
    try {
      URL url = new URL(apiURL);
      HttpURLConnection con = (HttpURLConnection)url.openConnection();
      con.setRequestMethod("GET");
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
    	out.println(res.toString());
      }
    } catch (Exception e) {
      System.out.println(e);
    }
}

%>

</body>
</html>
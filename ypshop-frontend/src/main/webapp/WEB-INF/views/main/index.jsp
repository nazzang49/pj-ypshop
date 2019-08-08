<%@page import="com.cafe24.ypshop.frontend.service.CustomJsonParse"%>
<%@page import="com.fasterxml.jackson.core.JsonParser"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>ypshop</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Bootie Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/assets/css/style.css" type="text/css" media="all">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.css"/>
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="${pageContext.servletContext.contextPath }/assets/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <!-- //Fonts -->

</head>

<body>

 <%
    String clientId = "JKX_G4a7I3XWnU1fAqpv";//애플리케이션 클라이언트 아이디값";
    String clientSecret = "RBlOVgmo_s";//애플리케이션 클라이언트 시크릿값";
    String code = request.getParameter("code");
    String state = request.getParameter("state");
    String redirectURI = URLEncoder.encode("http://localhost:8090/ypshop-frontend/", "UTF-8");
    String apiURL;
    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
    apiURL += "client_id=" + clientId;
    apiURL += "&client_secret=" + clientSecret;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&code=" + code;
    apiURL += "&state=" + state;
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
  %>


<script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
<script>
(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
  		// format, zoneKey, segment:value, options
  		_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
  	}
})();
</script>
<script>
(function(){
if(typeof _bsa !== 'undefined' && _bsa) {
	// format, zoneKey, segment:value, options
	_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
}
})();
</script>
<script>
(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
  		// format, zoneKey, segment:value, options
  		_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
  	}
})();
</script>
<script type="text/javascript" src="//services.bilsyndication.com/adv1/?d=353" defer="" async=""></script><script> var vitag = vitag || {};vitag.gdprShowConsentTool=false;vitag.outStreamConfig = {type: "slider", position: "left" };</script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-125810435-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-125810435-1');
</script><script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-30027142-1', 'w3layouts.com');
  ga('send', 'pageview');
</script>
<body>

<script>
	var update_result = ${update_result};
	
	if(update_result!=null&&update_result==true){
		alert("회원 수정 성공");
	}
</script>

<a href="${pageContext.servletContext.contextPath}/naver_info?access_token=<%=access_token %>">네이버 블로그 카테고리 목록</a>

    <!-- mian-content -->
    <div class="main-banner" id="home" style="text-align: center;">
        <!-- header -->
        <c:import url='/WEB-INF/views/includes/header.jsp'>
    		<c:param name="menu" value="main"/>
    	</c:import>
        <!-- //header -->
    
        <!--/banner-->
        <div class="banner-info">
            <h3 class="mb-4">ypshop</h3>
            <div class="ban-buttons">
                <a href="shop-single.html" class="btn">Shop Now</a>
                <a href="single.html" class="btn">Read More</a>
            </div>
        </div>
        <!--// banner-inner -->
    </div>
    
    <!-- 상품 카테고리 -->
    <div style="height:100px; background:black;">
	    <ul class="menu mt-2" id="product-category" style="height:100%; text-align: center;">
	    	<c:forEach items="${categoryList }" var="cvo">
	    	<li style="list-style: none; font-size: 25px; margin-top: 30px;"><a href="${pageContext.servletContext.contextPath}">${cvo.name }</a></li>
	    	</c:forEach>
	    </ul>
    </div>
    
    
    <!--//main-content-->
        <section class="about py-5">
        <div class="container pb-lg-3">
            <h3 class="tittle text-center">product</h3>
            <div class="row">
            	<c:forEach items="${productList }" var="pvo">
                <div class="col-md-4 product-men">
                	<!-- 상품 목록 -->
                	<div class="product-shoe-info shoe text-center">
                        <div class="men-thumb-item">
                            <img src="${pageContext.servletContext.contextPath}/assets${pvo.thumbnailUrl}" class="img-fluid" alt="">
                            <span class="product-new-top">${pvo.name }</span>
                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="shop-single.html">${pvo.shortDescription } </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money">상품 가격 ${pvo.price }</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="${pageContext.servletContext.contextPath }/product/view/${pvo.no}">상품 상세</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    
                </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- //ab -->
    <!-- brands -->
    <section class="brands py-5" id="brands">
        <div class="container py-lg-0">
            <div class="row text-center brand-items">
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-empire" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3 mt-sm-0 mt-4">
                    <a href="#"><span class="fa fa-joomla" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3 mt-sm-0 mt-4">
                    <a href="#"><span class="fa fa-dropbox" aria-hidden="true"></span></a>
                </div>
            </div>
        </div>
    </section>
    <!-- brands -->
    <!-- footer -->
    <footer>
        <div class="container">
            <div class="row footer-top">
                
            </div>
        </div>
    </footer>
    <!-- //footer -->

</body>

</html>

<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="com.fasterxml.jackson.annotation.JsonProperty.Access"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="com.cafe24.ypshop.frontend.service.CustomJsonParse"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Shoppy an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/assets/css/admin-main.css" rel="stylesheet" type="text/css" media="all"/>
<!--js-->
<script src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.9.0.js"></script> 
<!--icons-css-->
<link href="${pageContext.request.contextPath}/assets/css/font-awesome.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
<!--static chart-->
<script src="https://p.w3layouts.com/demos/28-03-2016/shoppy/web/js/Chart.min.js"></script>
<!--//charts-->
<!-- geo chart -->
    <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
    <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
     <!-- Chartinator  -->
    <script src="${pageContext.request.contextPath}/assets/js/chartinator.js" ></script>
    <script type="text/javascript">
        jQuery(function ($) {

            var chart3 = $('#geoChart').chartinator({
                tableSel: '.geoChart',

                columns: [{role: 'tooltip', type: 'string'}],
         
                colIndexes: [2],
             
                rows: [
                    ['China - 2015'],
                    ['Colombia - 2015'],
                    ['France - 2015'],
                    ['Italy - 2015'],
                    ['Japan - 2015'],
                    ['Kazakhstan - 2015'],
                    ['Mexico - 2015'],
                    ['Poland - 2015'],
                    ['Russia - 2015'],
                    ['Spain - 2015'],
                    ['Tanzania - 2015'],
                    ['Turkey - 2015']],
              
                ignoreCol: [2],
              
                chartType: 'GeoChart',
              
                chartAspectRatio: 1.5,
             
                chartZoom: 1.75,
             
                chartOffset: [-12,0],
             
                chartOptions: {
                  
                    width: null,
                 
                    backgroundColor: '#fff',
                 
                    datalessRegionColor: '#F5F5F5',
               
                    region: 'world',
                  
                    resolution: 'countries',
                 
                    legend: 'none',

                    colorAxis: {
                       
                        colors: ['#679CCA', '#337AB7']
                    },
                    tooltip: {
                     
                        trigger: 'focus',

                        isHtml: true
                    }
                }

               
            });                       
        });
    </script>
<!--geo chart-->

<!--skycons-icons-->
<script src="https://p.w3layouts.com/demos/28-03-2016/shoppy/web/js/skycons.js"></script>
<!--//skycons-icons-->


<style>

div.market-update-block h4{
	margin-bottom:15px;
}

</style>



</head>
<body>
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
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-30027142-1', 'w3layouts.com');
  ga('send', 'pageview');
</script>

<body>	

<script>

	//회원목록 by Ajax
	
	
	
	
</script>
 


<div class="page-container">	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
				<div class="header-main">
					
					<c:import url='/WEB-INF/views/includes/admin-header.jsp'/>
					
				</div>
<!--heder end here-->
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
<!--inner block start here-->
<div class="inner-block">
<!--market updates updates-->
	 <div class="market-updates" style="margin-top:40px;">
			<div class="col-md-4 market-update-gd" style="float:left;">
				<div class="market-update-block clr-block-1">
					<div class="col-md-8 market-update-left">
						<h3>${map.memberCount }명</h3>
						<h4>회원 수</h4>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-file-text-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd" style="float:left;">
				<div class="market-update-block clr-block-2">
				 <div class="col-md-8 market-update-left">
					<h3>${map.productCount }개</h3>
					<h4>등록된 상품 수</h4>
				  </div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-eye"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd" style="float:left;">
				<div class="market-update-block clr-block-3">
					<div class="col-md-8 market-update-left">
						<h3>${map.orderCount }건</h3>
						<h4>처리 중인 주문 수</h4>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-envelope-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>
<!--market updates end here-->
<!---728x90--->

<div>
	
	<%
// 		out.println(request.getParameter("result"));
	
		CustomJsonParse cjp = new CustomJsonParse();
		String startDate = cjp.getNaverSearchResult(request.getParameter("result"));
		
		out.println("<br>");
		
// 		out.println(startDate);
	%>

</div>


<!--mainpage chit-chating-->
<div class="chit-chat-layer1">
	<div class="col-md-6 chit-chat-layer1-left">
               <div class="work-progres">
                            <div class="chit-chat-heading">
                                  Recent Followers
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                  <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Project</th>
                                      <th>Manager</th>                                   
                                      <th>Status</th>
                                      <th>Progress</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>1</td>
                                  <td>Face book</td>
                                  <td>Malorum</td>                                 
                                                             
                                  <td><span class="label label-danger">in progress</span></td>
                                  <td><span class="badge badge-info">50%</span></td>
                              </tr>
                          </tbody>
                      </table>
                  </div>
             </div>
      </div>
      <div class="col-md-6 chit-chat-layer1-rit">    	
      	  <div class="geo-chart">
					<section id="charts1" class="charts">
				<div class="wrapper-flex">
				
				    <table id="myTable" class="geoChart tableChart data-table col-table" style="display:none;">
				        <caption>Student Nationalities Table</caption>
				        <tr>
				            <th scope="col" data-type="string">Country</th>
				            <th scope="col" data-type="number">Number of Students</th>
				            <th scope="col" data-role="annotation">Annotation</th>
				        </tr>
				        <tr>
				            <td>China</td>
				            <td align="right">20</td>
				            <td align="right">20</td>
				        </tr>
				        <tr>
				            <td>Colombia</td>
				            <td align="right">5</td>
				            <td align="right">5</td>
				        </tr>
				        <tr>
				            <td>France</td>
				            <td align="right">3</td>
				            <td align="right">3</td>
				        </tr>
				        <tr>
				            <td>Italy</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Japan</td>
				            <td align="right">18</td>
				            <td align="right">18</td>
				        </tr>
				        <tr>
				            <td>Kazakhstan</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Mexico</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Poland</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Russia</td>
				            <td align="right">11</td>
				            <td align="right">11</td>
				        </tr>
				        <tr>
				            <td>Spain</td>
				            <td align="right">2</td>
				            <td align="right">2</td>
				        </tr>
				        <tr>
				            <td>Tanzania</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Turkey</td>
				            <td align="right">2</td>
				            <td align="right">2</td>
				        </tr>
				
				    </table>
				
				</div><!-- .wrapper-flex -->
				</section>				
			</div>
      </div>
     <div class="clearfix"> </div>
</div>
<!--main page chit chating end here-->
<!---728x90--->

<!--main page chart start here-->
<div class="main-page-charts">
   <div class="main-page-chart-layer1">
		<div class="col-md-6 chart-layer1-left"> 
			<div class="glocy-chart">
			<div class="span-2c">  
                        <h3 class="tlt">Sales Analytics</h3>
                        <canvas id="bar" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                        <script>
                            var barChartData = {
                            labels : ["Jan","Feb","Mar","Apr","May","Jun","jul"],
                            datasets : [
                                {
                                    fillColor : "#FC8213",
                                    data : [20,59,90,81,56,55,40]
                                },
                                {
                                    fillColor : "#337AB7",
                                    data : [28,48,40,19,96,27,100]
                                }
                            ]

                        };
                            new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);

                        </script>
                    </div> 			  		   			
			</div>
		</div>
		
	 <div class="clearfix"> </div>
  </div>
 </div>
<!--main page chart layer2-->
<div class="chart-layer-2">
	
	<div class="col-md-6 chart-layer2-right">
			<div class="prograc-blocks">
		     <!--Progress bars-->
	        <div class="home-progres-main">
	           <h3>Total Sales</h3>
	         </div>
	        <div class='bar_group'>
					<div class='bar_group__bar thin' label='Rating' show_values='true' tooltip='true' value='343'></div>
					<div class='bar_group__bar thin' label='Quality' show_values='true' tooltip='true' value='235'></div>
					<div class='bar_group__bar thin' label='Amount' show_values='true' tooltip='true' value='550'></div>
					<div class='bar_group__bar thin' label='Farming' show_values='true' tooltip='true' value='456'></div>
		    </div>
				<script src="https://p.w3layouts.com/demos/28-03-2016/shoppy/web/js/bars.js"></script>

	      <!--//Progress bars-->
	      </div>
	</div>
  <div class="clearfix"> </div>
</div>

</div>
<!--inner block end here-->
<!---728x90--->

<!--copy rights start here-->
<div class="copyrights">
	 <p>© 2016 Shoppy. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
</div>	
<!--COPY rights end here-->
</div>
</div>
<!--slider menu-->
    
    
     <c:import url='/WEB-INF/views/includes/admin-menu.jsp'/>
    
    
	<div class="clearfix"> </div>
</div>
<!--slide bar menu end here-->
<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>
<!--scrolling js-->
		<script src="https://p.w3layouts.com/demos/28-03-2016/shoppy/web/js/jquery.nicescroll.js"></script>
		<script src="https://p.w3layouts.com/demos/28-03-2016/shoppy/web/js/scripts.js"></script>
		<!--//scrolling js-->
<script src="https://p.w3layouts.com/demos/28-03-2016/shoppy/web/js/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
</html>
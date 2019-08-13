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

.order-detail{
	-webkit-transition: 0.5s;
}

.order-detail:hover{
	cursor:pointer;
	background:#D2E9FF;
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


<script type="text/javascript">

	//회원삭제 by Ajax
	function removeUser(id){
		$.ajax({
			url:"${pageContext.servletContext.contextPath }/api/admin/user/delete?id="+id,
			type:"get",
			dataType:"json",
			success:function(response){
				if(response.result!="success"){
					console.error(response.message);
					return;
				}
				if(response.data==false){
					alert("회원 삭제 실패");
					return;
				}
				alert("회원 삭제 성공");
			},
			error:function(xhr, error){
				console.log("error : "+error);
			}
		});
	}
	
	//상품 등록 >> 새창 열기
	function addProduct(){
		window.open("${pageContext.servletContext.contextPath }/admin/product/add", "popup", "width=1700, height=1000");
	}

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

<!---728x90--->

<script>
	
	//(관리자) 주문_상세
	function chkOrderDetail(){
		
	}
	
	
	//주문 상태 여러개 변경 >> window open
	$(function(){
	    $("#allChk").click(function(){
	        var chk = $(this).is(":checked");
	        if(chk) {
	        	$(".orderNo").prop('checked', true);
	        	$('#update-btn').show();
	        	$('#select-status').show();
	        }else {
	        	$(".orderNo").prop('checked', false);
	        	$('#update-btn').hide();
	        	$('#select-status').hide();
	        }
	    });
	    
	    $('.orderNo').click(function(){
	    	
	    	//체크된 체크박스 확인
	    	var chkbox = document.getElementsByClassName('orderNo');
	    	
	    	for(var i=0;i<chkbox.length;i++){
	    		if(chkbox[i].checked){
	    			$('#update-btn').show();
	    			$('#select-status').show();
	    			return;
	    		}
	    	}
	    	$('#update-btn').hide();
	    	$('#select-status').hide();
	    });
	    
	    //상태 변경 by ajax
	    $('#update-btn').click(function(){
	    	
	    	var chkbox = document.getElementsByClassName('orderNo');
	    	var noList = [];
	    	var status = $('#select-status').val();
	    	
	    	//체크된 주문의 주문 번호 배열 생성
	    	for(var i=0;i<chkbox.length;i++){
	    		if(chkbox[i].checked){
	    			noList.push(chkbox[i].value);
	    		}
	    	}
	    		    	
	    	$.ajax({
				url:"${pageContext.request.contextPath }/api/admin/order/update?noList="+noList+"&status="+status,
				type:"get",
				dataType:"json",
				success:function(response){
					if(response.result!="success"){
						alert("통신 실패");
						return;
					}
					if(response.data==true){
						alert("주문 상태 수정 성공");
						return;
					}
					alert("주문 상태 수정 실패");
				},
				error:function(error){
					console.log(error);
				}
			});
	    });
	});

</script>

<!--mainpage chit-chating-->
<div class="chit-chat-layer1">
	<div class="col-md-6 chit-chat-layer1-left">
	<h1 style="margin-top:100px; margin-bottom:30px;">주문관리</h1>
               <div class="work-progres">
                            <div class="chit-chat-heading">
                                  주문 목록
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                  <thead>
                                    <tr style="font-size:10px;">
                                      <th><input type="checkbox" id="allChk"></th>
                                      <th>주문 번호</th>
                                      <th>회원 아이디</th>
                                      <th>주문자 이름</th>                                   
                                      <th>주문자 주소</th>
                                      <th>주문자 전화번호</th>
                                      <th>주문자 이메일</th>
                                      <th>수령자 이름</th>
                                      <th>수령자 주소</th>
                                      <th>수령자 전화번호</th>
                                      <th>배송 메시지</th>
                                      <th>주문일자</th>
                                      <th>결제종류</th>
                                      <th>결제금액</th>
                                      <th>주문상태</th>
                                  </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${orderList }" var="ovo" varStatus="status">
                                <tr style="font-size:10px;" class="order-detail" onclick="chkOrderDetail()">
                                  <!-- 주문번호 -->
                                  <td><input type="checkbox" class="orderNo" value="${ovo.no }"></td>
                                  <td>${ovo.no }</td>
                                  <td>${ovo.memberId }</td>
                                  <td>${ovo.customerName }</td>
                                  <td>${ovo.customerAddress }</td>
                                  <td>${ovo.customerPhone }</td>
                                  <td>${ovo.customerEmail }</td>
                                  <td>${ovo.receiverName }</td>
                                  <td>${ovo.receiverAddress }</td>
                                  <td>${ovo.receiverPhone }</td>
                                  <td>${ovo.receiverMsg }</td>
                                  <td>${ovo.orderDate }</td>
                                  <td>${ovo.paymentCategory }</td>
                                  <td>${ovo.paymentPrice }</td>
                                  <td>${ovo.status }</td>
                              </tr>
                              </c:forEach>
                          </tbody>
                      </table>
                      <button class="btn btn-primary" style="float:right; display:none;" id="update-btn" onclick="updateStatus()">선택 주문 상태 변경</button>
                      <select id="select-status" style="display:none; float:right; margin-right:15px; height:40px;">
                      	<option value="입금 확인">입금 확인</option>
                      	<option value="배송 진행">배송 진행</option>
                      	<option value="배송 완료">배송 완료</option>
                      	<option value="환불 완료">환불 완료</option>
                      </select>
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
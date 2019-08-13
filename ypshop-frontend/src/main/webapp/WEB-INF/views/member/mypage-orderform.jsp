<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" >
        <!--[if IE 10]><meta http-equiv="X-UA-Compatible" content="IE=8" /><![endif]-->
        <title>Cafe24-Echosting Admin</title>
                <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/influencer/common.css" media="all" charset="utf-8" />

<link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=rZRtTsMwDIYPQP9yDgtOgriB67idaVIHJ1kHpyftJJiYJo2SX0n88eR9ZSVw0MDw9GwQTUfDABgjvJi6QhleOWkxYqCU1oItOKgF4FPUVIy7mnmEK4hdNrKTrGuOj8LLHzrq0mu-0XCfTskcfgGG2s2L2vRzZ5GINMHbe2H7gOjLKHOq0Y13jnZFOtIrw_thtV4-sfftiIk9U26KRKqenejcjliykoboObeT2ZecG2p0gl7HdnPx4tia4eqEUzurmDkKTQ31bQ-UU-qxoecDB_7XRxBwLgNSvv1n3cdx7OW4qtppjdDz7NC-Nw8yD7th6tXO45t5uTyuxC8&type=css&k=27a77d213714e1492d0d487aa308fa9db806c781&t=1562696197" />

<script src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.9.0.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- 다음 주소 API -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

    <script type="text/javascript">function getMultiShopUrl(sUrl)
        {
           if (SHOP.isMultiShop() === false) {
               return sUrl;
           } else if (/^\/((?:disp|exec)\/admin|admin\/php)(\/shop\d+)\//.test(sUrl) === true) {
               return sUrl;
           } else {
               return sUrl.replace(/\/((?:disp|exec)\/admin|admin\/php)(\/shop\d+)?\//, "/$1/shop" + EC_SDE_SHOP_NUM + "/");
           }
        }
var EC_SDE_SHOP_NUM = 1;var SHOP = {getLanguage : function() { return "ko_KR"; },getCurrency : function() { return "KRW"; },getFlagCode : function() { return "KR"; },isMultiShop : function() { return true; },isDefaultShop : function() { return true; },isDefaultLanguageShop : function(sLanguageCode) { return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode); },isKR : function() { return true; },isUS : function() { return false; },isJP : function() { return false; },isCN : function() { return false; },isTW : function() { return false; },isES : function() { return false; },isPT : function() { return false; },isVN : function() { return false; },isLanguageShop : function(sLanguageCode) { return sLanguageCode === "ko_KR"; },getDefaultShopNo : function() { return 1; },getProductVer : function() { return 2; },isSDE : function() { return true; },isMode : function() {return true; },getAdminID : function() {return 'neomart'},getMallID : function() {return 'neomart'}};var EC_COMMON_UTIL = {convertSslForString : function(sString) { return sString.replace(/http:/gi, '');},convertSslForHtml : function(sHtml) { return sHtml.replace(/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig, '$1$2');},getProtocol : function() { return 'https'; },moveSsl : function() { if (EC_COMMON_UTIL.getProtocol() === 'http') { var oLocation = jQuery(window.location); var sUrl = 'https://' + oLocation.attr('host') + oLocation.attr('pathname') + oLocation.attr('search'); window.location.replace(sUrl); } }};
            var EC_ROOT_DOMAIN = "cafe24.com";
            var EC_GLOBAL_INFO = (function() {
                var oData = {"base_domain":"neomart.cafe24.com","root_domain":"cafe24.com","is_global":false,"country_code":"KR","language_code":"ko_KR"};
                
                return {
                    getBaseDomain: function() {
                        return oData['base_domain'];
                    },

                    getRootDomain: function() {
                        return oData['root_domain'];
                    },

                    isGlobal: function() {
                        return oData['is_global'];
                    },

                    getCountryCode: function() {
                        return oData['country_code'];
                    },

                    getLanguageCode: function() {
                        return oData['language_code'];
                    }
                };
            })();
</script>


<style type="text/css">
input[type="submit"] {
	width: 250px;
    outline: none;
    border: none;
    cursor: pointer;
    font-size: 15px;
    color: #fff;
    padding: 12px 40px;
    text-transform: uppercase;
    letter-spacing: 1px;
    display: inline-block;
    background: #43ABFF;
    font-weight: 700;
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
    border-radius:0em;
}

input[type="submit"]:hover{
	background:#0911EB;
}

.chkbox{
	border:2px solid black;
}

input[type="text"]{
	height: 40px;
	width: 500px;
}

</style>




</head>
<body>


<script type="text/javascript">

	//진열구분
	$(function(){
		$('.chkbox').click(function(){
			//모든 라디오 버튼 해제
			$('.radio-btn').attr('checked', false);
			$('.chkbox').css('background-color', 'white');
			$('.chkbox').css('color','black');
			$('.chkbox').css('border','1px solid black');
			$('.chkbox').css('font-weight','normal');
			
			//현재 클릭한 라디오 버튼 체크
			var chkboxId = '#'+$(this).attr('for');
			
			$(chkboxId).attr('checked', true);
			$(this).css('background-color','#43A5FF');
			$(this).css('border','none');
			$(this).css('color','white');
			$(this).css('font-weight','bold');
		});
	})


 	function addImage(){
 		var imageCount = document.getElementsByName('image').length;
 		if(imageCount==10){
 			alert("추가 이미지 최대 10개");
 			return;
 		}
 		var htmls = "<input type='file' name='image' style='padding:0; margin-left:15px;'>";
 		$('#add-image').append(htmls);
 	}
 	
	//1차 옵션 추가
 	function addFirstOption(){
 		var optionCount = document.getElementsByName('firstOption').length;
 		if(optionCount==10){
 			alert("추가 옵션 최대 10개");
 			return;
 		}
 		var htmls = '<div><input type="text" name="firstOption" style="width:200px;" value="" placeholder="옵션명 입력"/></div>';
 		$('#add-firstoption').append(htmls);
 	}
 	
	//2차 옵션 추가
 	function addSecondOption(){
 		var optionCount = document.getElementsByName('secondOption').length;
 		if(optionCount==10){
 			alert("추가 옵션 최대 10개");
 			return;
 		}
 		var htmls = '<div><input type="text" name="secondOption" style="width:200px;" value="" placeholder="옵션명 입력"/></div>';
 		$('#add-secondoption').append(htmls);
 	}
 </script>


<script>
	//다음 주소 API
	function getAddress(flag){
		new daum.Postcode({
	        oncomplete: function(data) {
	            //우편번호
	        	var zipcode = data.zonecode;
	            //도로명 주소
				var roadAddr = data.roadAddress;
				var newAddr = "("+zipcode+") "+roadAddr;
		        
		        //주소 입력 후, disabled 설정
		        document.getElementById(flag).value = newAddr;
	        	
	        }
	    }).open();
	}
</script>


<div class="mToggleBar eToggle selected ec-product-register-toggle">
    <h2>주문 정보 입력</h2>
    <div class="ctrl">
        <span><button type="button"><em>열기</em></button></span>
    </div>
</div>

<div class="toggleArea">
    <div class="mBoard typeWrite">
    
    
    	<!-- 상품 등록 form >> 사진 포함 -->
    	<form action="${pageContext.request.contextPath}/member/order/add" method="post" name="product-add-form">
    	
    	 
        <table border="1" summary="">
            <caption>상품 기본 정보</caption>
            <colgroup>
                <col style="width:190px;" />
                <col style="width:308px;" />
                <col style="width:auto;" />
            </colgroup>
            <tbody>
            <tr>
                <th scope="row">주문자 이름</th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="customerName" id="product_name" placeholder="예시) 박진영"/>
                    </div>
                </td>
            </tr>
            <tr>
                <th scope="row">주문자 주소</th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="customerAddress" id="customerAddress" placeholder="주소 검색 활용"/>
                        <button type="button" class="btn btn-info" onclick="getAddress('customerAddress')" style="width:200px;">주문자 주소 검색</button>
                    </div>
                </td>
            </tr>
            <tr>
                <th scope="row">주문자 전화번호</th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="customerPhone" id="product_name" placeholder="예시) 01011112222"/>
                    </div>
                </td>
            </tr>
            <tr>
                <th scope="row">주문자 이메일</th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="customerEmail" id="product_name" placeholder="예시) test@test.com"/>
                    </div>
                </td>
            </tr>
            <tr>
                <th scope="row">수령자 이름</th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="receiverName" id="product_name" placeholder="예시) 박진수"/>
                    </div>
                </td>
            </tr>
            <tr>
                <th scope="row">수령자 주소</th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="receiverAddress" id="receiverAddress" placeholder="주소 검색 활용"/>
                        <button type="button" class="btn btn-info" onclick="getAddress('receiverAddress')" style="width:200px;">수령자 주소 검색</button>
                    </div>
                </td>
            </tr>
            <tr>
                <th scope="row">수령자 전화번호</th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="receiverPhone" id="product_name" placeholder="예시) 01011112222"/>
                    </div>
                </td>
            </tr>
			<tr>
                <th scope="row">배송 메시지</th>
                <td colspan="2">
                    <textarea id="summernote" name="receiverMsg" style="width:500px; height:300px;" placeholder="예시) 부재 시, 경비실에 맡겨주세요."></textarea>
                </td>
            </tr>
            <tr style="height:70px;">
                <th scope="row">결제 종류</th>
                <td colspan="2">
                	<div style="margin-top: 15px;">
                    <label for="checkbox-8" style="border:1px solid black; padding: 15px 25px; width:170px;" class="btn btn-default chkbox">무통장 입금</label>
					<input type="radio" style="display:none;" name="paymentCategory" id="checkbox-8" class="radio-btn" value="Y">
					
					<label for="checkbox-9" style="border:1px solid black; padding: 15px 25px; width:170px;" class="btn btn-default chkbox">계좌이체</label>
					<input type="radio" style="display:none;" name="paymentCategory" id="checkbox-9" class="radio-btn" value="N">
					</div>
                </td>
            </tr>
            <tr>
            
            	<!-- 최종 결제 금액 계산 필요 >> 서비스 단계에서 합산하여 리턴 -->
                <th scope="row">최종 결제 금액</th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="paymentPrice" id="product_name" value="${paymentPrice }" readonly/>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
        
        <div style="text-align: center; margin-top: 40px;">
        	<input type="submit" value="상품 등록">
        </div>
        
        </form>
    </div>
    <li id="ec-product-register-addimage-template" style="display: none;">
        <div class="mThumb gSmall" >
            <div class="thumb">
                <img src="" alt="" class="ec-product-register-add-image-tag" />
                <input type="hidden" id="ec-product-register-addimage-input" value="">
            </div>
            <div class="button">
                <button type="button" class="btnEdit ec-product-register-addimage-modify"><span class="icoEdit"></span>변경</button>
                <button type="button" class="btnDelete ec-product-register-addimage-delete"><span class="icoDelete"></span>삭제</button>
            </div>
        </div>
    </li>
</div>
<!-- //기본정보 -->


</body>
</html>
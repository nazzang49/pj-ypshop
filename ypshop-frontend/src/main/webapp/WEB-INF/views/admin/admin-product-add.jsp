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


<div class="mToggleBar eToggle selected ec-product-register-toggle">
    <h2>기본 정보</h2>
    <div class="ctrl">
        <span><button type="button"><em>열기</em></button></span>
    </div>
</div>

<div class="toggleArea">
    <div class="mBoard typeWrite">
    
    
    	<!-- 상품 등록 form >> 사진 포함 -->
    	<form action="${pageContext.request.contextPath}/admin/product/add" method="post" name="product-add-form" enctype="multipart/form-data">
    	
    	 
        <table border="1" summary="">
            <caption>상품 기본 정보</caption>
            <colgroup>
                <col style="width:190px;" />
                <col style="width:308px;" />
                <col style="width:auto;" />
            </colgroup>
            <tbody>
            <tr>
                <th scope="row">카테고리 </th>
                <td colspan="2">
                	<select name="categoryNo">
                		<c:forEach items="${categoryList }" var="cvo">
                			<option value="${cvo.no }">${cvo.name }</option>
                		</c:forEach>
                	</select>
                </td>
            </tr>
            <tr>
                <th scope="row">상품명 </th>
                <td colspan="2">
                    <div class="overlapTip">
                        <input type="text" name="name" id="product_name" placeholder="예시) 청바지"/>
                    </div>
                </td>
            </tr>
            <tr>
                <th scope="row">상품 가격(원)</th>
                <td colspan="2">
                    <input type="hidden" name="product_tax_type" value="A">
                    <input type="text" name="price" value="">
                </td>
            </tr>
            <tr>
                <th scope="row">상품 요약설명</th>
                <td colspan="2">
                    <input type="text" name="shortDescription" value=""/>
                </td>
            </tr>
            <tr style="height:70px;">
                <th scope="row">진열구분</th>
                <td colspan="2">
                	<div style="margin-top: 15px;">
                    <label for="checkbox-8" style="border:1px solid black; padding: 15px 25px;" class="btn btn-default chkbox">진열 YES</label>
					<input type="radio" style="display:none;" name="alignUse" id="checkbox-8" class="radio-btn" value="Y">
					
					<label for="checkbox-9" style="border:1px solid black; padding: 15px 25px;" class="btn btn-default chkbox">진열 NO</label>
					<input type="radio" style="display:none;" name="alignUse" id="checkbox-9" class="radio-btn" value="N">
					</div>
                </td>
            </tr>
            <tr>
                <th scope="row">이미지</th>
                <td>
                    <span class="txtStrong">썸네일</span>
                    
                    
                    <input type="file" name="thumbnailUrl">
                    
                    <!-- 참고: 이미지 등록 후 -->
                    <div class="mThumb gLarge gDouble" id="ec-product-register-image-exist" style="display: none;">
                        <div class="thumb">
                            <img src="/web/product/big/" alt="" id="ec-product-register-image"/>
                        </div>
                        <div class="button">
                            <button type="button" class="btnEdit" id="ec-product-register-image-modify"><span class="icoEdit"></span>변경</button>
                            <button type="button" class="btnDelete" id="ec-product-register-image-delete"><span class="icoDelete"></span>삭제</button>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="mThumbs eImgSort" id="ec-product-register-addimage-list">
                        <ul id="extraImage">
                            
                            <li  id="ec-product-register-addimage-upload">
                                
                                <div style="margin-bottom: 15px;">
                                <button type="button" onclick="addImage()" style="background:black; padding: 15px; color: white; margin-left:15px;">이미지 추가(최대 10개)</button>
                                </div>
                                
                                <div id="add-image">
                                	
                                </div>
                            </li>
                        </ul>
                    </div>
                </td>
            </tr>
            <tr>
             <th scope="row">1차 옵션(색상)</th>
                <td colspan="2">
                <button type="button" onclick="addFirstOption()" style="background:black; padding: 15px; color: white; margin-bottom:20px;">옵션 추가(1차)</button>
                <div id="add-firstoption">
                	<div>
        	       	<input type="text" name="firstOption" style="width:200px;" value="" placeholder="옵션명 입력"/>
                	</div>
                </div>
                </td>
            </tr>
            <tr>
             <th scope="row">2차 옵션(사이즈)</th>
                <td colspan="2">
                <button type="button" onclick="addSecondOption()" style="background:black; padding: 15px; color: white; margin-bottom:20px;">옵션 추가(2차)</button>
                <div id="add-secondoption">
                	<div>
           	    	<input type="text" name="secondOption" style="width:200px;" value="" placeholder="옵션명 입력"/>
                	</div>
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
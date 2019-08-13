<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" >
        <!--[if IE 10]><meta http-equiv="X-UA-Compatible" content="IE=8" /><![endif]-->
        <title>Cafe24-Echosting Admin</title>
                <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/influencer/common.css" media="all" charset="utf-8" />


<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">

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
var EC_SDE_SHOP_NUM = 1;var SHOP = {getLanguage : function() { return "ko_KR"; },getCurrency : function() { return "KRW"; },getFlagCode : function() { return "KR"; },isMultiShop : function() { return false; },isDefaultShop : function() { return true; },isDefaultLanguageShop : function(sLanguageCode) { return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode); },isKR : function() { return true; },isUS : function() { return false; },isJP : function() { return false; },isCN : function() { return false; },isTW : function() { return false; },isES : function() { return false; },isPT : function() { return false; },isVN : function() { return false; },isLanguageShop : function(sLanguageCode) { return sLanguageCode === "ko_KR"; },getDefaultShopNo : function() { return 1; },getProductVer : function() { return 2; },isSDE : function() { return true; },isMode : function() {return true; },getAdminID : function() {return 'neomart'},getMallID : function() {return 'neomart'}};var EC_COMMON_UTIL = {convertSslForString : function(sString) { return sString.replace(/http:/gi, '');},convertSslForHtml : function(sHtml) { return sHtml.replace(/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig, '$1$2');},getProtocol : function() { return 'https'; },moveSsl : function() { if (EC_COMMON_UTIL.getProtocol() === 'http') { var oLocation = jQuery(window.location); var sUrl = 'https://' + oLocation.attr('host') + oLocation.attr('pathname') + oLocation.attr('search'); window.location.replace(sUrl); } }};
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
            })();</script>
            <script src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.9.0.js"></script> 
            
            </head>
    <body class="ECInfluencer">
                <div id="wrap" class="">
            <div id="header">

            <!-- GNB Start -->
            <script type="text/javascript">
    function shop_admin_icon()
    {
        if (confirm('바탕화면에 쇼핑몰 관리자 바로가기를 생성하시겠습니까?')) {
            DesktopIconObj.addIcon('http://echosting.cafe24.com/Shop/','쇼핑몰 관리 어드민','//img.cafe24.com/images/ec_admin/etc/EC_quick_02.ico');
            alert('생성되었습니다.');
        } else {
            alert('취소되었습니다.');
        }
    }

    function addFavorite(){
        var title = "쇼핑몰 관리 어드민";
        var url = "http://echosting.cafe24.com/Shop/";
        if(window.sidebar && window.sidebar.addPanel){    //firefox
            window.sidebar.addPanel(title, url,"");
        }else if(window.opera && window.print){    //opera
            var elem = document.createElement('a');
            elem.setAttribute('href',url);
            elem.setAttribute('title',title);
            elem.setAttribute('rel','sidebar');
            elem.click();
        }else if(document.all){    //msie
            window.external.AddFavorite( url, title);
        }else{
            alert("죄송합니다.\n\n사용하시는 브라우저는 즐겨찾기 추가 기능이 지원되지 않습니다.\n\n수동으로 즐겨찾기를 추가해 주셔야 합니다.");
            return true;
        }
    }
</script>

<div class="header">
    <h1 class="logo">
    <!-- 로고 클릭 시, 메인 이동 -->
        <a href="${pageContext.request.contextPath }">
            <img src="//img.echosting.cafe24.com/ec/mode/influencer/common/h1_logo.png" alt="cafe24" style="vertical-align: top;"/>
            <span class="icoStandardMode">마이페이지</span>
        </a>
    </h1>
    
</div>

<script language='Javascript'>

    function montionControlDisable ()
    {
        document.onselectstart = document.oncopy = document.oncut = document.onpaste = document.oncontextmenu = new Function('return false');
    }

    function motionControl ()
    {
        //Parent Menu No값 가져오기
        var pMenu = $('#gnb .selected a');
        var pMenuNo = Number(pMenu.attr('menuno'));

        //Tab Menu No값 가져오기
        var tMenu = $('.tabArea .selected a');
        var tMenuNo = Number(tMenu.attr('menuno'));

        //Child Menu No값 가져오기
        var cMenu = $('.menu .selected a');
        var cMenuNo = Number(cMenu.attr('menuno'));

        var aMenuList = [2060,5];
    var aMotionControlNoList = [pMenuNo,tMenuNo,cMenuNo];

    for (var key in aMotionControlNoList) {
        if (aMenuList.indexOf(aMotionControlNoList[key]) !== -1) {
        $('<div/>', {
        class: 'check_use_motion',
        id: 'check_use_motion'
    }).prependTo('#header');

        montionControlDisable();

        break;
    }
    }
    }
</script>

<script>

//장바구니 상품 여러개 주문
$(function(){
    $("#allChk").click(function(){
        var chk = $(this).is(":checked");
        if(chk) {
        	$(".delete-cart").prop('checked', true);
        	$('#update-btn').show();
        	$('#select-status').show();
        }else {
        	$(".delete-cart").prop('checked', false);
        	$('#update-btn').hide();
        	$('#select-status').hide();
        }
    });
    
    $('.delete-cart').click(function(){
    	
    	//체크된 체크박스 확인
    	var chkbox = document.getElementsByClassName('delete-cart');
    	
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
    
    //상품 주문 by ajax
    $('#update-btn').click(function(){
    	
    	var chkbox = document.getElementsByClassName('delete-cart');
    	var noList = [];
    	var status = $('#select-status').val();
    	
    	
    	for(var i=0;i<chkbox.length;i++){
    		if(chkbox[i].checked){
    			noList.push(chkbox[i].value);
    		}
    	}
    		    	
    	//mypage-orderform 페이지 window open
    	window.open("${pageContext.request.contextPath}/member/order/orderform?noList="+noList, "popup", "width=1700, height=1000");
    });
});

</script>


            <!-- GNB End -->

            </div><!-- //header -->
            <hr class="layout" />
            <div id="container"><!--  class="snbHidden" -->
                <div id="sidebar">

                    <!-- LNB Start -->
   						
   						
   						<c:import url='/WEB-INF/views/includes/mypage-menu.jsp'/>
   						
   						
                    <!-- LNB End -->

                </div>

                <hr class="layout" />

                <!-- Content Start -->
                <!-- [ content ] -->
<div id="content">
    <div class="dashboardArea">
        
        <h1 style="margin:30px 0;">[<sec:authentication property="principal.username"/>]님의 장바구니 리스트</h1>

		<div class="section" id="QA_profile2">
                    <div class="mTitle">
                        <h2>장바구니 리스트</h2>
                        <div class="cTip" code="CU.MM.MS.70"></div>
                    </div>
                    <div class="mState">
                       
                                                                                                   
                                            </div>
                    <div class="mCtrl typeHeader">
                        <div class="gLeft">
                        <script>
                        
                        	function deleteChecked(){
                        		var noList = [];
                        		
                        		var chkList = document.getElementsByClassName('delete-cart');
                        		
                        		for(var i=0;i<chkList.length;i++){
                        			if(chkList[i].checked==true){
                        				noList.push(chkList[i].value);
                        			}
                        		}
                        		
                        		//장바구니 삭제 by ajax
                        		$.ajax({
                    				url:"${pageContext.request.contextPath }/api/order/cart/delete?noList="+noList,
                    				type:"get",
                    				dataType:"json",
                    				success:function(response){
                    					if(response.result!="success"){
                    						alert("통신 실패");
                    						return;
                    					}
                    					if(response.data==true){
                    						alert("선택 상품 삭제 성공");
                    						return;
                    					}
                    					alert("선택 상품 삭제 실패");
                    				},
                    				error:function(error){
                    					console.log(error);
                    				}
                    			});
                        		
                        	}
                        </script>
                            <a href="#none" onclick="setBlacklist();" class="btnNormal" style="display: none;"><span>불량회원 설정</span></a>
                                                            <a href="javascript:deleteChecked()" class="btnNormal"><span><em class="icoDel"></em> 삭제</span></a>
                                                    </div>
                        
                    </div>
                    		<script>
                    			//장바구니 여러개 삭제
                            	$(function(){
								    $("#allChk").click(function(){
								        var chk = $(this).is(":checked");
								        if(chk) $(".delete-cart").prop('checked', true);
								        else  $(".delete-cart").prop('checked', false);
								    });
								});
                            </script>
                    
                    <!-- 일반보기 -->
                    <div class="mBoard gScroll gCellNarrow">
                   
                        <table border="1" summary="" class="eChkColor">
                            <caption>회원 목록</caption>
                            
                            <thead>
                            <tr style="font-size:25px;">
                                <th scope="col"><input type="checkbox" id="allChk"></th>
                            <th>상품 썸네일</th>
                            <th>상품명</th>
                            <th>상품 가격</th>
                            <th>상품 옵션</th>
                            <th>수량</th>
                                                            </tr>
                            <script>Gui.set('sms')</script>
                            </thead>
                             
                            <tbody class="center">
                            
                           
                            
                            <c:forEach items="${cartList }" var="cvo" varStatus="status">
                            <tr style="font-size:20px;">
                            
                            <!-- 장바구니 여러개 삭제 -->
                            <td><input type="checkbox" name="no" class="delete-cart" value="${cvo.no }"></td>
                            
                            <td><img src="${pageContext.servletContext.contextPath}/assets${cvo.thumbnailUrl}" style="width:90px; height:90px;"></img></td>
                            <td><a href="${pageContext.servletContext.contextPath}/product/view/${cvo.productNo}" style="text-decoration: underline;">${cvo.productName }</a></td>
                            <td>${cvo.cartPrice }원</td>
                            <td>${cvo.firstOptionName } / ${cvo.secondOptionName }</td>
                            <td>${cvo.cartAmount }</td>
                            
                            </tr>
                         
                            </c:forEach>
                            
                            
                                                        </tbody>
                        </table>
                        <button class="btn btn-primary" style="float:right; display:none; margin:10px;" id="update-btn" onclick="updateStatus()">선택 상품 주문</button>
                        
                    </div>
                    <div class="mCtrl typeFooter">
                        <div class="gLeft">
                            <a href="#none" onclick="setBlacklist();" class="btnNormal" style="display: none;"><span>불량회원 설정</span></a>
                                                            <a href="#none" onclick="delete_choice()" class="btnNormal"><span><em class="icoDel"></em> 삭제</span></a>
                                                    </div>
                        
                    </div>
                    <div class="mPaginate">
                                                    <ol>
                                <li><strong title="현재페이지">1</strong></li>
                            </ol>
                                            </div>
                </div>

    </div>

</div>
<!-- [ content ] -->

            </div>
        </div>

    <script type="text/javascript" src="//neomart.cafe24.com/admin/js/jslb_ajax.js" charset="utf-8"></script>
<script type="text/javascript" src="//neomart.cafe24.com/ind-script/i18n.php?lang=ko_KR&domain=admin&v=1908071072" charset="utf-8"></script>
<script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/influencer_suio.min.js" charset="utf-8"></script>
<script type="text/javascript" src="//img.echosting.cafe24.com/js/ec/mode/influencer_ui.js" charset="utf-8"></script>

<script type="text/javascript" src="/ind-script/optimizer.php?filename=ndDBDsIgDAbgB9Crz9HMePDuxYsX36CDbmMMigU0vr2YeHCJU0M4QEK_vwUY2BE0W4FO0NGNxYJQ5CyKYIxgmr1fj3ED3-qyCagsjJdMcn9tzXpX1kwG4b7gWX4MYnzqfheidsaDx6vpMRn2kDhUqOjbCuXI5xWq57lCd2gpKuFpqm6dEyt2YaJEtRnRoaSBpkBSG9Ey25Ji__XH0u3AemFkDAFO5RbOb7C80i198kegMQ4to-hiHg&type=js&k=2694c89408626dc3af60d0b42c499b20d7b4faac&t=1565116081"></script>
<script type="text/javascript">
var sServiceApiDomain = "service-api.echosting.cafe24.com";
var IS_SHOW_CHECKLIST = "F";
sessionStorage.setItem('SERAJwtToken', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJuZW9tYXJ0LmNhZmUyNC5jb20iLCJhdWQiOiJuZW9tYXJ0LmNhZmUyNC5jb20iLCJpYXQiOjE1NjU1MTU3NjMsIm1hbGxfaWQiOiJuZW9tYXJ0IiwibG9naW5faWQiOiJuZW9tYXJ0In0.1hSpsqSr9oA054wkey0vMOkrlhgP6A5EBcsE04nJ7T5tQyIEpYg9kuaUlYKgpqG3IDZZ1bDZz2m4XyaCrcyqUw')
var EC_GLOBAL_DATETIME = (function() {
var oConstants = {"STANDARD_DATE_REGEX":"\/([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))\/","IN_ZONE":"inZone","OUT_ZONE":"outZone","IN_FORMAT":"inFormat","OUT_FORMAT":"outFormat","IN_DATE_FORMAT":"inDateFormat","IN_TIME_FORMAT":"inTimeFormat","OUT_DATE_FORMAT":"outDateFormat","OUT_TIME_FORMAT":"outTimeFormat","IN_FORMAT_DATE_ONLY":1,"IN_FORMAT_TIME_ONLY":2,"IN_FORMAT_ALL":3,"OUT_FORMAT_DATE_ONLY":1,"OUT_FORMAT_TIME_ONLY":2,"OUT_FORMAT_ALL":3,"DATE_ONLY":"YYYY-MM-DD","TIME_ONLY":"HH:mm:ss","FULL_TIME":"YYYY-MM-DD HH:mm:ss","ISO_8601":"YYYY-MM-DD[T]HH:mm:ssZ","YEAR_ONLY":"YYYY","MONTH_ONLY":"MM","DAY_ONLY":"DD","WEEK_ONLY":"e","SEOUL":"Asia\/Seoul","TOKYO":"Asia\/Tokyo","SHANGHAI":"Asia\/Shanghai","TAIPEI":"Asia\/Taipei","HANOI":"Asia\/Bangkok","LOS_ANGELES":"America\/Los_Angeles","LISBON":"Europe\/Lisbon","MADRID":"Europe\/Madrid","UTC":"Etc\/UTC","MAX_DATETIME":"9999-12-31 23:59:59"};
var oOptions = {"inZone":"Asia\/Seoul","inFormat":"YYYY-MM-DD HH:mm:ss","inDateFormat":"YYYY-MM-DD","inTimeFormat":"HH:mm:ss","outZone":"Asia\/Seoul","outFormat":"YYYY-MM-DD HH:mm:ss","outDateFormat":"YYYY-MM-DD","outTimeFormat":"HH:mm:ss"};
var oPolicies = [];
var sOverrideTimezone = '';
var sMomentNamespace = 'moment';
var fMomentLoaded = function() {
var bMomentLoaded = !!window[sMomentNamespace];
var bMomentTZLoaded = false;
if (bMomentLoaded) {
bMomentTZLoaded = !!window[sMomentNamespace].tz;
}
return bMomentLoaded && bMomentTZLoaded;
};
var fMomentWrapper = function() {
return window[sMomentNamespace];
};
var fShallowMerge = function(oTarget, oSource) {
oSource = oSource || {};
for (var sKey in oSource) {
if (oSource.hasOwnProperty(sKey)) {
oTarget[sKey] = oSource[sKey];
}
}
return oTarget;
};
var getFormatFromFlag = function(oOptions, iFlag, bOpposite) {
if (bOpposite) {
switch (iFlag) {
case 1:
return oOptions[oConstants.IN_DATE_FORMAT];
case 2:
return oOptions[oConstants.IN_TIME_FORMAT];
default:
return oOptions[oConstants.IN_FORMAT];    
}
}
switch (iFlag) {
case 1:
return oOptions[oConstants.OUT_DATE_FORMAT];
case 2:
return oOptions[oConstants.OUT_TIME_FORMAT];
default:
return oOptions[oConstants.OUT_FORMAT];
}
};
return {
const: oConstants,
init: function(fCallback) {
if (fMomentLoaded()) {
if (typeof fCallback === 'function') {
fCallback();
}
return;
}
var oScript = document.createElement('script');
oScript.type = 'text/javascript';
oScript.async = true;
oScript.src = '/ind-script/moment.php?convert=F';
oScript.onload = oScript.onreadystatechange = function () {
fMomentWrapper().defaultFormat = oOptions[oConstants.OUT_FORMAT];
fMomentWrapper().tz.setDefault(oOptions[oConstants.IN_ZONE]);
if (typeof fCallback === 'function') {
fCallback();
}
};
var oFirstScript = document.getElementsByTagName('script')[0];
oFirstScript.parentNode.insertBefore(oScript, oFirstScript);
},
initPromise: function() {
if (!window.Promise) {
return;
}
return new Promise(function(resolve) {
this.init(resolve);
}.bind(this));
},
isLoaded: function() {
return fMomentLoaded();
},
setOptions: function(oNewOptions) {
if (typeof oNewOptions === 'object') {
for (var sKey in oNewOptions) {
if (oNewOptions.hasOwnProperty(sKey) && oOptions.hasOwnProperty(sKey)) {
oOptions[sKey] = oNewOptions[sKey];
}
}
}
return this;
},
now: function(mOptions, iFlag) {
if (fMomentLoaded() === false) {
return Math.floor(new Date().getTime() / 1000);
}
var oFormatOptions = this.getOptions(mOptions);
return fMomentWrapper()()
.tz(oFormatOptions.outZone)
.format(getFormatFromFlag(oFormatOptions, iFlag));
},
format: function(sTime, mOptions, iFlag) {
if (fMomentLoaded() === false) {
return sTime;
}
var oFormatOptions = this.getOptions(mOptions);
return fMomentWrapper()
.tz(sTime, oFormatOptions.inZone)
.tz(oFormatOptions.outZone)
.format(getFormatFromFlag(oFormatOptions, iFlag));
},
parse: function(sTime, mOptions) {
if (fMomentLoaded() === false) {
return sTime;
}
var oParseOptions = this.getOptions(mOptions);
return fMomentWrapper().tz((sTime || new Date()), oParseOptions.inZone).tz(oParseOptions.outZone);
},
getOptions: function(mOptions, iFlag) {
mOptions = mOptions || {};
var oMergedOptions = fShallowMerge({}, oOptions);
if (typeof mOptions === 'string' && oPolicies[mOptions]) {
oMergedOptions = fShallowMerge(oMergedOptions, oPolicies[mOptions]);
} else if (typeof mOptions === 'object') {
oMergedOptions = fShallowMerge(oMergedOptions, mOptions);
}
if (sOverrideTimezone) {
if ((typeof mOptions === 'string' && mOptions === 'shop') || (typeof mOptions === 'object' && !mOptions[oConstants.OUT_ZONE])) {
oMergedOptions[oConstants.OUT_ZONE] = sOverrideTimezone;
}
}
return oMergedOptions;
},
getRevertOptions: function(mOptions) {
var oCurrentOptions = this.getOptions(mOptions);
var oMergedOptions = fShallowMerge({}, oOptions);
oMergedOptions[oConstants.IN_ZONE] = oCurrentOptions[oConstants.OUT_ZONE];
oMergedOptions[oConstants.IN_FORMAT] = oCurrentOptions[oConstants.OUT_FORMAT];
oMergedOptions[oConstants.IN_DATE_FORMAT] = oCurrentOptions[oConstants.OUT_DATE_FORMAT];
oMergedOptions[oConstants.IN_TIME_FORMAT] = oCurrentOptions[oConstants.OUT_TIME_FORMAT];
return oMergedOptions;
},
today: function(sTime, mOptions, iFlag) {
if (fMomentLoaded() === false) {
throw new Error('MomentJS didnt initialize');
}
mOptions = mOptions || 'shop';
var oRevertOptions = this.getRevertOptions(mOptions);
var oToday;
if (!sTime || sTime === 'now') {
oToday = this.parse('', mOptions);
} else {
iFlag = iFlag || oConstants.IN_FORMAT_ALL || 3;
oToday = fMomentWrapper().tz(sTime, getFormatFromFlag(oRevertOptions, iFlag, true), oRevertOptions[oConstants.IN_ZONE]);
if (oToday.isValid() === false) {
var oStandardDateRegex = new RegExp(oConstants.STANDARD_DATE_REGEX.replace(/\//g, ''));
if (oStandardDateRegex.test(sTime) === true) {
oToday = fMomentWrapper().tz(sTime, oRevertOptions[oConstants.IN_ZONE]);
} else {
oToday = fMomentWrapper()();
}
}
}
var oStartOfDay = oToday.clone().startOf('day');
var oEndOfDay = oToday.clone().endOf('day');
var sStartOfDayInSeoul = oStartOfDay.tz(oConstants.SEOUL).format(oConstants.FULL_TIME);
var sEndOfDayInSeoul = oEndOfDay.tz(oConstants.SEOUL).format(oConstants.FULL_TIME);
return [sStartOfDayInSeoul, sEndOfDayInSeoul];
},
parseFromFormat: function(sTime, mOptions, iFlag) {
if (fMomentLoaded() === false) {
return sTime;
}
mOptions = mOptions || 'shop';
iFlag = iFlag || oConstants.IN_FORMAT_ALL || 3;
var oRevertOptions = {};
if (typeof mOptions === 'string') {
oRevertOptions = this.getRevertOptions(mOptions);
} else {
oRevertOptions = this.getOptions(mOptions);
}
return fMomentWrapper()(sTime, getFormatFromFlag(oRevertOptions, iFlag, true));
}
};
})();
var EC_ADMIN_JS_CONFIG_MODE = {"isSubAdmin":false};
</script>    </body>
</html>

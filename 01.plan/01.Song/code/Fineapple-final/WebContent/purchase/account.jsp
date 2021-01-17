
<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@page import="users.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>구매하기</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/UsersJoin/complete.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/purchase/paying.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
.div-container {
	width: 800px;
	margin: 200px auto 300px auto;
	border: 1px solid #d2d6dc;
	box-shadow: 0px 0px 10px 10px white;
	background-color: white;
	height: 500px;
}
</style>
</head>

<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"/>

	
	<header class="cs_func_page_header">
		<div class="cs_category">
			<p>구매하기</p>
			<p>결제하기</p>
			<p>결제완료</p>
		</div>
	</header>
	
	<div class="div-container">
			<section class="section-one">	
				<div class="section-welcome">

	<svg version="1.1" id="circle" xmlns="http://www.w3.org/2000/svg" 
	xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	  viewBox="0 0 100 100" xml:space="preserve">
	    <circle fill="none" stroke="#000" stroke-width="4" stroke-mitterlimit="0" cx="50" cy="50" r="48" stroke-dasharray="360" stroke-linecap="round" transform="rotate(-90 ) translate(-100 0)" >
	        <animate attributeName="stroke-dashoffset" values="360;0" dur="3s" repeatCount="indefinite">
	        </animate>
	    </circle>
	</svg>
						
						
					<h1 class="welcome-head">결제 진행 중입니다</h1>
					
				</div>
				<div class="trk-header-align-btn">
					<form action="/Fineapple-final/purchase/index.jsp" method="POST">
					<input type="submit" value="돌아가기">
					</form>
				</div>
			</section>
		</div>

	<!-- footer영역 -->
	<%@include file="../main/footer.jsp"%>
    <script>
  

    // 무통장 입금
    var IMP = window.IMP; // 생략가능
    IMP.init('imp85740135');  // 가맹점 식별 코드
    IMP.request_pay({
    	pg : "nice", // version 1.1.0부터 지원.
        pay_method : 'vbank',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '주문명:결제테스트',
        amount : 100,
        buyer_email : 'iamport@siot.do',
        buyer_name : '구매자이름',
        buyer_tel : '010-1234-5678',
        buyer_addr : '서울특별시 강남구 삼성동',
        buyer_postcode : '123-456',
        m_redirect_url : 'https://www.yourdomain.com/payments/complete'
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = '결제가 완료되었습니다.';
            location.href='<%=request.getContextPath() %>/purchase/payComplete.jsp';
        } else {
            var msg = '결제에 실패하였습니다.';
            rsp.error_msg; // 사용자 실패 메세지
            
        }
        alert(rsp.error_msg);
    });
  

    </script>
</body>
</html>
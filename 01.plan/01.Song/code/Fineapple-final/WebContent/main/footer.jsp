<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<footer class="home_footer_container">
	<div class="footer_header"> 
		<p>* 보상 판매 프로그램은 FineApple의 파트너이자 독립적으로 운영되는 제3의 업체에
		의해 제공됩니다. FineApple 및 FineApple의 계열사는 고객과 파트너 간 계약의 당사자가 아닙니다. 보상 판매 금액은 보상
		판매되는 스마트폰의 상태 및 모델에 따라 달라집니다. 19세 이상이어야 합니다. 일부 매장에서는 본 프로그램을 이용할 수
		없으며, 일부 기기는 보상 판매 대상이 아닙니다. FineApple은 어떤 기기든 수령을 거부하거나, 그 수량을 제한할 권리를
		보유합니다. 새 FineApple 기기 구매 시, 현재 소유한 기기의 가치만큼 할인을 받을 수도 있습니다. 추가 약관은
		FineApple.com/kr/trade-in을 참고하십시오.</p>
	</div>
	
	<div class="footer_body">
		<div>
			<ul class="foot-main-list">
		    	<li>
		            <h4>제품 알아보기</h4>
		        </li>
		        <li><a href="javascript:phoneSite()">휴대폰</a></li>
		        <li><a href="javascript:laptopSite()">노트북</a></li>
		        <li><a href="javascript:tabletSite()">태블릿PC</a></li>
		        <li><a href="javascript:watchSite()">스마트 워치</a></li>
		        <li><a href="javascript:accessorySite()">악세서리</a></li>
		    </ul>
		</div>
		<div>
		    <ul class="foot-main-list">
		        <li>
		            <h4>소개</h4>
		        </li>
		        <li><a href="<%=request.getContextPath() %>/intro/intro.jsp">회사 소개</a></li>
		        <li><a href="<%=request.getContextPath() %>/intro/vision.jsp">회사 비전</a></li>
		        </br>
		        <li>
		            <h4>커뮤니티</h4>
		        </li>
		        <li><a href="<%=request.getContextPath() %>/notice/notice.jsp">공지사항</a></li>
		        <li><a href="<%=request.getContextPath() %>/event/event.jsp">이벤트</a></li>
		        <li><a href="<%=request.getContextPath() %>/review.do?job=select">리뷰 게시판</a></li>
		    </ul>
		</div>
		<div>
		    <ul class="foot-main-list">
		        <li>
		            <h4>고객 지원</h4>
		        </li>
		        <li><a href="<%=request.getContextPath() %>/inquiry.do?job=select">Q&A 게시판</a></li>
		        <li><a href="<%=request.getContextPath() %>/faqbook.do?qa=selectFaq">FAQ</a></li>
		        <li><a href="<%=request.getContextPath() %>/cs_center/cs_func_page.jsp?func=../cs_center/cs_map.jsp">오시는 길</a></li>
	   	   	    <li><a href="<%=request.getContextPath() %>/login/loginfo.jsp">로그인</a></li>
		        <li><a href="<%=request.getContextPath() %>/UsersJoin/agree.jsp">회원 가입</a></li>
		        <li><a href="<%=request.getContextPath() %>/login/findId.jsp">아이디 찾기</a></li>
		        <li><a href="<%=request.getContextPath() %>/login/findPw.jsp">비밀번호 찾기</a></li>
		        
		    </ul>
		</div>
		<div>
		    <ul class="foot-main-list">
		        <li>
		            <h4>고객 정보</h4>
		        </li>
		        <li><a href="<%=request.getContextPath() %>/mypage/cart.jsp">장바구니</a></li>
		        <li><a href="<%=request.getContextPath() %>/mypage/orderlist.jsp">정보 수정</a></li>
		        <li><a href="<%=request.getContextPath() %>/mypage/coupon.jsp">주문 내역</a></li>
		        <li><a href="#">찜목록</a></li>
		        <li><a href="#">쿠폰함</a></li>
		    </ul>
		
		</div>
		<div>
		    <ul class="foot-main-list">
		        <li>
		            <h4>FINEAPPLE 정보</h4>
		        </li>
		        <li><a href="#">Newsroom</a></li>
		        <li><a href="#">FINEAPPLE 리더쉽</a></li>
		        <li><a href="#">채용 안내</a></li>
		        <li><a href="#">개인정보 보호</a></li>
		        <li><a href="#">협력업체에 대한 책임</a></li>
		    </ul>
		</div>
	</div>

	<div class="footer_footer">
		<div id="foot-bottom1">
			<p>다양한 쇼핑 방법: FineApple Store를 방문하거나, 리셀러를 찾아보거나, 010-41991479번으로 전화하세요.</p>
		</div>
		<div id="foot-bottom2">
			<p>사업자등록번호 : 123-45-67890 | 통신판매업신고번호 : 제 2011-서울강남-00810호 | 대표이사 : 정희석 | 주소 : 서울 특별시 강남구 영동대로 517 | 대표전화 : 010-4199-1479 | 팩스 : 02-2060-1479</p>
		</div>
	</div>

</footer>
</body>
</html>
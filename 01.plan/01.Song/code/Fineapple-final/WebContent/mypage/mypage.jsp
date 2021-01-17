<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@page import="users.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/UsersJoin/mypage.css">
<link rel="stylesheet" href="../css/UsersJoin/agree.css">
<link rel="stylesheet" href="../css/indexstyle.css">


<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>
<script src="../js/userjoin/mypage.js"></script>
<style>
.table{
	margin : 0 auto;
	text-align :center;
}

.cs_func_page_header {
	width: 100%;
	height: 200px;
	text-align: center;
	padding-top: 55px; 
	border-bottom: 3px solid #000000;
}

.cs_category {
	font-size: 1.5em;
	font-weight: bold;
	margin-top: 40px;
	display: flex;
	justify-content: space-around;
	width: 60%;
	margin: 49px auto 0 auto;
	height: 50px;
}
.cs_category > a {
	display: inline-block;
	width: 150px;
	padding-bottom: 10px;
	color : black;
	text-decoration : none;
}
.cs_category > a:hover {
	border-bottom:6px solid #000000;
}

.cs_category > a:visited {
	color: #000000;
	
}

.div-container {
	width: 800px;
	margin: 100px auto 0 auto;
	border: 1px solid #d2d6dc;
	box-shadow: 0px 0px 10px 10px white;
	background-color: white;
	height: 1300px;
}
</style>
</head>

<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"/>
	
	<% 
	String id = (String)session.getAttribute("member_mid");
	String member_pwd = (String)session.getAttribute("member_pwd");

	%>
	
	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">마이페이지</h1>
		<div class="cs_category">
			<a href="../mypage/mypage">정보수정</a>
			<a href="../mypage/cart.jsp">장바구니</a>
			<a href="../mypage/orderlist.jsp">주문내역</a>
			<a href="../mypage/coupon.jsp">쿠폰함</a>
		</div>
	</header>
	
	<div class="div-container">

			<section class="section-one">	
				<div class="section-welcome">
					<h1 class="welcome-head">회원정보 수정</h1>
					<hr class="section-hr">
				</div>
			</section>
			<section class="section-two">
				<form class="frm-member" id="frm_member" name="frm_member" action="" method="post">
					<div class="frm-label">
						<label>아이디</label>
					</div>
					<div class="frm-input-id">
						<input style="font-weight:bold" type="text" name="frm-id" readonly="readonly" value="${userInfo.getMember_mid() }">
					</div>

					<div class="frm-label">
						<label>현재 비밀번호</label>
					</div>
					<div class="frm-input-password">
						<input type="password" name="frm_password" placeholder="비밀번호 자리 8~20자">
					</div>
						
					<div class="frm-label">
						<label>새로운 비밀번호</label>
						
					</div>
					<div class="frm-input-password">
						<input type="password" name="re_frm_password" placeholder="변경할 비밀번호" value="">
						
					</div>
						
					<div class="frm-label">
						<label>이름</label>
					</div>
					<div class="frm-input-name">
						<input style="font-weight:bold" type="text" name="frm-name" placeholder="성명을 입력해주세요." value="${userInfo.getMember_name() }">
					</div>
					
					<div class="frm-label">
						<label>이메일</label>
					</div>
					<div class="frm-input-email">
						<input style="font-weight:bold" type="text" name="frm-email" placeholder="example@gmail.com" value="${userInfo.getMember_email() }">
					</div>
					

					<div class="frm-label">
						<label>전화번호</label>
					</div>
					<div class="frm-input-phone">
						<select name="phone_first">
							<option selected >010</option>
							<option>017</option>
						</select>
						<input style="font-weight:bold" type="text"  id="phoneNum" name="frm_phone" placeholder="3333-3333" maxlength="9" value="${userInfo.getMember_phone() }">
					</div>

					<div class="frm-label">
						<label>주소</label>
					</div>
					<div class="frm-input-zipcode">
						<input style="font-weight:bold" type="text" name="zipcode" placeholder="우편번호" value="${userInfo.getMember_zipcode() }">
						<input style="font-weight:bold" type="button" name="btnZipcode" id="btnFindZip" value="우편번호검색">
						<input style="font-weight:bold" type="text" name="address" placeholder="상세주소" value="${userInfo.getMember_address() }">
					</div>
					
					<div class="frm-label">
						<label>생년월일</label>
					</div>
					<div class="frm-input-birth">
						<select>
							
							<% for(int i = 1900; i < 2020; i++) {%>
							<option selected><%= i+1%>년</option>
							<% } %>
						</select>
						
						<select>
							<% for(int i = 0; i < 31; i++) {%>
							<option><%= i+1%>일</option>
							<% } %>
						</select>
						
						<select>
							<% for(int i = 0; i < 12; i++) {%>
							<option><%= i+1%>월</option>
							<% } %>
						</select>

					</div>

					<div class="frm-submit">
						<input type="button" onclick="check_Pwd()" name="frm-sumbit" value="수정하기">
					</div>
				</form>
			</section>
		</div>
	
	<!-- footer영역 -->
	<%@include file="../main/footer.jsp"%>
	<script>
	member();
	phoneHypen();
	</script>
</body>
</html>
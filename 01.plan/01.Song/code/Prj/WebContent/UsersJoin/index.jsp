<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/UsersJoin/UsersJoin.css">
<link rel="stylesheet" href="../css/indexstyle.css">

<script src="https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/xmas/snow.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body class="body">
	<header>
		<jsp:include page="../header1.jsp"></jsp:include>
	</header>
	
		<div class="div-container">

			<section class="section-one">	
				<div class="section-welcome">
					<div class="welcome-img">
						<img src="../images/UsersJoin/img_welcome.png">
					</div>
					<h1 class="welcome-head">FINE APPLE에 오신 것을 환영합니다!</h1>
					<hr class="section-hr">
				</div>
			</section>

			<section class="section-two">
				<form class="frm-member" id="frm-member" action="result.jsp" method="POST">
					<div class="frm-label">
						<label>아이디</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-id">
						<input type="text" name="frm-id" placeholder="아이디 입력(10자)">
						<input type="button" name="frm-check" id="id-Check" value="중복확인">
					</div>

					<div class="frm-label">
						<label>비밀번호</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-password">
						<input type="password" name="frm-password" placeholder="비밀번호 자리 8~20자">
					</div>
						
					<div class="frm-label">
						<label>비밀번호 재입력</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-password">
						<input type="password" name="frm-password" placeholder="비밀번호 재입력">
					</div>
						
					<div class="frm-label">
						<label>이름</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-name">
						<input type="text" name="frm-name" placeholder="성명을 입력해주세요.">
					</div>
					
					<div class="frm-label">
						<label>이메일</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-email">
						<input type="text" name="frm-email" placeholder="example@gmail.com">
					</div>
					

					<div class="frm-label">
						<label>전화번호</label>
					</div>
					<div class="frm-input-phone">
						<select name="phone_first">
							<option selected >010</option>
							<option>017</option>
						</select>
						<input type="text" name="frm-phone" placeholder="3333-3333">
					</div>

					<div class="frm-label">
						<label>주소</label>
					</div>
					<div class="frm-input-zipcode">
						<input type="text" name="zipcode" placeholder="우편번호">
						<input type="button" name="btnZipcode" id="btnFindZip" value="우편번호검색">
						<input type="text" name="address" placeholder="상세주소">
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
							<option><%= i+1%>월</option>
							<% } %>
						</select>
						
						<select>
							<% for(int i = 0; i < 12; i++) {%>
							<option><%= i+1%>일</option>
							<% } %>
						</select>

					</div>

					<div class="frm-submit">
						<input type="submit" name="frm-sumbit" value="가입하기">
					</div>
				</form>
			</section>
		</div>

		
	
	
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
	
	<script>
	member();
	</script>
</body>
</html>
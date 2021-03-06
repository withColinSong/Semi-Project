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
				<form action="" method="POST">

					<div class="frm-label">
						<label>아이디</label>
					</div>
					<div class="frm-input-id">
						<input type="text" name="frm-id" placeholder="아이디 입력(10자)">
						<input type="button" name="frm-check" value="중복확인">
					</div>

					<div class="frm-label">
						<label>이름</label>
					</div>
					<div class="frm-input-name">
						<input type="text" name="frm-name" placeholder="성명을 입력해주세요.">
					</div>

					<div class="frm-label">
						<label>비밀번호</label>
					</div>
					<div class="frm-input-password">
						<input type="text" name="frm-password" placeholder="비밀번호 자리 8~20자">
					</div>

					<div class="frm-label">
						<label>비밀번호 재입력</label>
					</div>
					<div class="frm-input-password">
						<input type="text" name="frm-password" placeholder="비밀번호 재입력">
					</div>

					<div class="frm-label">
						<label>주소</label>
					</div>
					<div class="frm-input-zipcode">
						<input type="text" name="frm-zipcode" placeholder="우편번호">
						<input type="button" name="frm-check" value="우편번호">
						<input type="text" name="frm-zipcode" placeholder="상세주소">
					</div>
					
					<div class="frm-label">
						<label>생년월일</label>
					</div>
					<div class="frm-input-birth">
						<select>
							<% for(int i = 0; i < 12; i++) {%>
							<!-- for(int i = 0; i < 12; i++)-->
							<option><%= i+1%>일</option>
							<% } %>
						</select>

						<select>
							<% for(int i = 0; i < 31; i++) {%>
							<option><%= i+1%>월</option>
							<% } %>
						</select>

						<select>
							<% for(int i = 1900; i < 2020; i++) {%>
							<option><%= i+1%>년</option>
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
	
</body>
</html>
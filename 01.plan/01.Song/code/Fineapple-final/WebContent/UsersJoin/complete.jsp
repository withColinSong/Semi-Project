<%@page import="users.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입완료</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/UsersJoin/complete.css">
<link rel="stylesheet" href="../css/indexstyle.css">

<script src="https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/xmas/snow.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>

</head>
<body class="body">
<!-- header영역 -->
		<jsp:include page="../main/header.jsp"/>

		<div class="div-container">

			<section class="section-one">	
				<div class="section-welcome">
					<div class="welcome-img">
						<img src="../images/UsersJoin/complete.png">
					</div>
					<h1 class="welcome-head">회원가입이 완료되었습니다.</h1>
					<div class="welcome-head-fine" > FineApple MAKES INNOVATION<br>
						혁신을 만들어갑니다.
					</div>
					
				</div>
				<div class="trk-header-align-btn">
					<form action="/Fineapple-final/login/loginfo.jsp" method="POST">
					<input type="submit" value="로그인">
					</form>
				</div>
			</section>
		</div>


	<footer>
		<jsp:include page="/main/footer.jsp"></jsp:include>
	</footer>
	
</body>
</html>
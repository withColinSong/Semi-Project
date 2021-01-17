<%@page import="users.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/UsersJoin/idCheckForm.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<script
	src="https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/xmas/snow.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>

</head>
<%
String user_id = request.getParameter("frm_id");
MemberVo vo = (MemberVo)request.getAttribute("list");


%>
<body class="body">
	<!-- header영역 -->
	<jsp:include page="../main/header.jsp" />

	<div class="div-container">

		<section class="section-one">
			<div class="section-welcome">
				<div class="welcome-img">
					
					
					<% if(user_id.equals("admin")) {%>
					<img src="../images/UsersJoin/important.png">
					<h1 class="welcome-head-id"><%=user_id %></h1>
					<h1 class="welcome-head">접근권한이 없습니다.</h1>
					
					<%} else if(vo.getMember_mid() != null) {%>
					<img src="../images/UsersJoin/important.png">
					<h1 class="welcome-head-id"><%=user_id %></h1>
					<h1 class="welcome-head">아이디가 중복입니다.</h1>
					<%} else{ %>					
					<img src="../images/UsersJoin/smile.png">
					<h1 class="welcome-head-id"><%=user_id %></h1>
					<h1 class="welcome-head">사용 가능한 아이디 입니다.</h1>
					<% } %>
					
					 
				</div>
			</div>
		</section>
		
				<div class="frm-submit">
					<form action="index.jsp">
					<input type="submit" name="frmSubmit" value="돌아가기">
					<input type="hidden" name="frm_id" id="reg-id"  maxlength="15" value="${param.frm_id }">
					</form>
				</div>
	</div>


	<footer>
		<jsp:include page="/main/footer.jsp"></jsp:include>
	</footer>


</body>
</html>
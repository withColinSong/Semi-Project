<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="../css/findinfo.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<script src ='../js/findinfo.js'></script>
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">
</head>
<body>
		<!-- header영역 -->
	<jsp:include page="/main/header.jsp"/>
	
	
	
<div class = "container">
	<form name="idfindscreen" method = "POST">
			<div class = "search-title">
				<h3>휴대폰 본인확인</h3>
			</div>
		<section class = "form-search">
			<div class = "find-name">
				<label>이름</label>
				<input type="text" name="member_name" class = "btn-name" placeholder = "등록한 이름">
			<br>
			</div>
			<div class = "find-phone">
				<label>번호</label>
				<input type="text" onKeyup = "addHypen(this);" name="member_phone" class = "btn-phone" placeholder = "휴대폰번호를 '-'없이 입력">
			</div>
			<br>
	</section>
	<div class ="btnSearch">
		<input type="button" name="enter" value="찾기"  onClick="id_search1()">
		<input type="button" name="cancle" value="취소" onClick="history.back()">
 	</div>
 </form>
</div>

    <div class="footer-align">
        <hr>
        <div class="help-box">도움이 더 필요하신가요? <a href="chat.jsp">지금 채팅하기</a> 또는 080-330-8877 번호로 문의하세요.</div>
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
        </div>
 <script>
 
 </script>
</body>
</html>
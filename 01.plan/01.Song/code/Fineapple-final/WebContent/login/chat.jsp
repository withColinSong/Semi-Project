<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fineapple</title>
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
       <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico"> 
</head>
<style>
h4{
	text-align : center;
	padding-bottom : 20px;
}

#btnBack{
	margin-top : 20px;
	width: 100px;
	border-radius: 5px;
    border: 1px solid black;
    background : black;
    color : white;
    font-weight:700;
    font-size:0.9em;
    cursor: pointer;
}
#btnJoin{
    cursor: pointer;
	margin-top : 20px;
	width: 100px;
	border-radius: 5px;
    border: 1px solid black;
    background : black;
    color : white;
     font-weight:700;
    font-size:0.9em;
	float: right;
}

#btnBack:hover
,#btnJoin:hover{
	background : white;
	color: black;
}
</style>
<body>
	<jsp:include page="/main/header.jsp"/>


 <div class="container">
<h4>궁금한 점을 실시간으로 물어보세요</h4>
<iframe src="https://service.dongledongle.com/fineapple" frameborder="0" width="100%" height="800vh"></iframe>

<input type="submit" id="btnBack" value="뒤로가기" onClick="history.back()">
<input type="button" id="btnJoin" value="회원가입" onclick="location.href='../UsersJoin/index.jsp'">

</div>
   	<%@include file="../main/footer.jsp" %>
</body>
</html>
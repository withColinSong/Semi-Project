<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%
			 
	session.setAttribute("member_mid", "5235268");
	response.sendRedirect("../main/index.jsp");
	%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src = "https://developers.kakao.com/sdk/js/kakao.min.js"></script>

</body>
</html>
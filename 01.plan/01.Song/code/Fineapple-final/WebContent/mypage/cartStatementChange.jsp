<%@page import="mypage.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../main/header.jsp"/>
<%
//해당 상품정보 받아오기
System.out.println("cartStatementChange 시작");
CartDao dao = new CartDao();
String memberid=(String)session.getAttribute("member_mid");


//카트 리스트에 추가하기
dao.payment(memberid);//카트 db에서 statement 1로 변경
response.sendRedirect("../purchase/payComplete.jsp");

%>
</body>
</html>
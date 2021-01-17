<%@page import="product.ProductVo"%>
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

CartDao dao = new CartDao();
ProductVo vo =new ProductVo();
int product_serial=Integer.parseInt(request.getParameter("product_serial"));
int product_amount=Integer.parseInt(request.getParameter("amount"));
String product_color=request.getParameter("product_color");
String member_id=(String)session.getAttribute("member_mid");
System.out.println(member_id);



//카트 리스트에 추가하기
dao.insertCart(member_id, product_serial, product_amount);//카트 db에 등록
%>
</body>
</html>
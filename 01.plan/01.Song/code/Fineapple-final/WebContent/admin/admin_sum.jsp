<%@page import="java.util.List"%>
<%@page import="bean.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/admin_index.css">
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">
</head>
<body>
<jsp:useBean id="dao" class="bean.MemberDao"/>

		<!-- header영역 -->
	<jsp:include page="../main/header.jsp"/>
	
	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">관리자페이지</h1>
		<div class="cs_category">
			<a href="admin_member.jsp">회원 관리</a>
			<a href="admin_product.jsp">상품 관리</a>
			<a href="admin_sum.jsp">매출 달력</a>
		</div>
</header>
	
	<h2> 매출 달력</h2>
<div class="admin-sum-container">


	<div class="calender">
   		<%@include file="calender.jsp" %>
	</div>
	<table class = "admin-sum-table" style="width:100%" >

		<tr >

			<th>상품분류</th><th>매출액</th><th>전년대비</th><th>전월대비</th>

		</tr>

			<tr>
				<td>휴대폰</td>
				<td>3,230,000</td>
				<td>-2.2%</td>
				<td>-3.5%</td>
			</tr>
			<tr>
				<td>노트북</td>
				<td>9,690,000</td>
				<td>-1.2%</td>
				<td>-5.2%</td>
			</tr>
			<tr>
				<td>태블릿pc</td>
				<td>7,170,000</td>
				<td>+3.3%</td>
				<td>+2.5%</td>
			</tr>
			<tr>
				<td>스마트워치</td>
				<td>2,740,000</td>
				<td>+3.2%</td>
				<td>+1.1%</td>
			</tr>
			<tr>
				<td>악세서리</td>
				<td>1,650,000</td>
				<td>+2.2%</td>
				<td>+4.1%</td>
			</tr>
	
	</table>	

	</div>
			
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>

</body>
</html>
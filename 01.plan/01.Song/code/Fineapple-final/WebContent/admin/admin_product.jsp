<%@page import="product.ProductVo"%>
<%@page import="java.util.List"%>
<%@page import="bean.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin_index.css">
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/images/favicon.png">
    <link rel="icon" href="favicon.ico">
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/admin.js"></script>
</head>
<body>
<jsp:useBean id="dao" class="product.ProductDao"/>

		<!-- header영역 -->
	<jsp:include page="../main/header.jsp"/>
	
	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">관리자페이지</h1>
		<div class="cs_category">
			<a href="<%=request.getContextPath() %>/admin/admin_member.jsp">회원 관리</a>
			<a href="<%=request.getContextPath() %>/admin.do?job=productSelect">상품 관리</a>
			<a href="<%=request.getContextPath() %>/admin/admin_sum.jsp">매출 달력</a>
		</div>
</header>
	
<div class="admin-container">


	<h2> 전체 상품 관리</h2>


	<table class = "admin-table" style="width:100%" >

		<tr >
			<th>상품코드</th><th>분류</th><th>이름</th><th>가격</th><th>정보</th>
		</tr>

		<c:set var="no" value="${page.startNo}"></c:set>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.product_serial}</td>
					<td>${vo.product_description}</td>
					<td>${vo.product_name}</td>
					<td>${vo.product_price}</td>
					<td><a href="javascript:admin_view_member('')">상세보기</a></td>
				</tr>
				<c:set var="no" value="${no=no+1}"></c:set>
			</c:forEach>
	</table>	
	<form action="member_modify_admin_form.jsp" name="modifyFrm" method="post">
		<input type="hidden" name="id">
	</form>
</div>
	<form action="" name="frm_admin" method="post">
		<div class = 'btns'>
			<input type = 'button' onclick = "goPage(1)" value = "<"/>
			<c:forEach var="i" begin="${page.startPage }" end="${page.endPage}">
				<input type = 'button'class = 'num' value = '${i}' onclick="goPage(${i})">
			</c:forEach>
			<input type = 'button' onclick="goPage(${page.totPage})" value = '>'/>
			<input type="hidden" value="" name="nowPage">
		</div>
	</form>
			
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
</body>
</html>
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
			<a href="<%=request.getContextPath() %>/admin/admin_member.jsp">회원 관리</a>
			<a href="<%=request.getContextPath() %>/admin.do?job=productSelect">상품 관리</a>
			<a href="<%=request.getContextPath() %>/admin/admin_sum.jsp">매출 달력</a>
		</div>
</header>
	
<div class="admin-container">


	<h2> 전체 회원 관리</h2>


	<table class = "admin-table" style="width:100%" >

		<tr >

			<th>아이디</th><th>회원명</th><th>이메일</th><th>전화</th><th>정보</th>

		</tr>

	<%
	ArrayList<MemberVo> list = dao.getMemberAll();

	for(MemberVo vo : list){
	%>
			<tr>
				<td><%=vo.getMember_mid() %></td>
				<td><%=vo.getMember_name() %></td>
				<td><%=vo.getMember_email() %></td>
				<td><%=vo.getMember_phone() %></td>
				<td><%=vo.getMember_address() %></td>
			</tr>
	<%} %>
	</table>	
	<form action="member_modify_admin_form.jsp" name="modifyFrm" method="post">
		<input type="hidden" name="id">
	</form>
</div>
		<div class = 'btns'>
		<input type = 'button' value = '<'/>
		<input type = 'button'class = 'num' value = '1'>
		<input type = 'button' value = '>'/>
	</div>
			
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>

</body>
</html>
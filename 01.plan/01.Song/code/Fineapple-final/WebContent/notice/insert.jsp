<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="notice.NoticeVo"%>
<%@page import="notice.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>

<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/notice.css">
<link rel="stylesheet" href="../css/footer.css">
<script type="text/javascript" src="../js/notice.js"></script>
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">
</head>
<body>
<jsp:useBean id="dao" class="notice.NoticeDao"/>

<!-- header -->

	<jsp:include page="/main/header.jsp"/>
	
<div class = 'notice-container-insert'>
<form name= 'frm_notice' method = 'POST' class = 'notice-insert'>
		<table >
			<tr>
				<th scope='row'>작성자</th>
				<td><input type = 'text' name= 'mid' id = 'mid' size ='10' value = '관리자' disabled required/></td>
			</tr>
			<tr>
				<th scope='row'>제목</th>
				<td><input type = 'text' name= 'noticeSubject'  id = 'subject' required/></td>
			</tr>
			<tr>
				<th scope='row'>작성일</th>
				<td><output class='noticeDate'><%=new Date().toLocaleString() %></output></td>
			</tr>					
			<tr class = 'view'>
				<td colspan ='2'>
					<div class ='content'>
						<!-- <textarea name= 'noticeDoc' rows = '7' cols ='80' required></textarea> -->
						   		<jsp:include page="note.jsp"/>

						
					</div>				
				</td>
			</tr>
		</table>
		
<!-- 			<label>첨부파일</label>
			<input type = 'file' name = 'photo' id='btnPhoto'/>
			<br><br>
			<label></label>
			<img src = 'http://placehold.it/200x140' id=photo width = '200px' height = '140px'/>			
			<img src = 'http://placehold.it/200x140' id=photo width = '200px' height = '140px'/>			
			<img src = 'http://placehold.it/200x140' id=photo width = '200px' height = '140px'/>			
			<img src = 'http://placehold.it/200x140' id=photo width = '200px' height = '140px'/>	 -->		
			<br><br><br><br>
			<div class = 'btns'>
				<input type = 'submit' value = '저장' id = 'btnSave' onclick="save()"/>
				<input type = 'button' value = '목록' id = 'btnBack' onClick="history.back()"/>
				
				<!-- 원래 hidden -->
				<input type = 'hidden' name = 'findStr' value = '${param.findStr }' />
				<input type = 'hidden' name = 'nowPage' value = '${param.nowPage }' />
			</div>
		</form>		
	</div>	
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
<script>
notice()
</script>
</body>
</html>
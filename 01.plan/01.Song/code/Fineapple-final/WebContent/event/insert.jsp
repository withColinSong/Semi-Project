<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event</title>

<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/event.css">
<link rel="stylesheet" href="../css/footer.css">
<script type="text/javascript" src="../js/event.js"></script>
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">
</head>
<body>

<!-- header -->
	<jsp:include page="/main/header.jsp"/>

	
<h3 class = 'event_h3'>글쓰기</h3>
	
<div class = 'event-container-insert'>
	
<form name= 'frm_event' method = 'POST' class = 'event-insert'>
			<table >
					<tr>
						<th scope='row'>작성자</th>
						<td><input type = 'text' name= 'mid' id = 'mid' size ='10' value = '관리자' disabled required/></td>
					</tr>
					<tr>
						<th scope='row'>제목</th>
						<td><input type = 'text' name= 'subject'  id = 'subject' required/></td>
					</tr>
					<tr>
						<th scope='row'>작성일</th>
						<td><output class='mdate'><%=new Date().toLocaleString() %></output></td>
					</tr>
					
					<tr class = 'view'>
						<td colspan ='2'>
							<div class ='content'>
								<textarea name= 'doc' rows = '7' cols ='80'></textarea>
							</div>				
						</td>
					</tr>
				
				</table>
				
				
			
			
			<label>첨부파일</label>
			<input type = 'file' name = 'photo' id='btnPhoto'/>
			<br><br>
			<label></label>
			<img src = 'http://placehold.it/200x140' id=photo width = '200px' height = '140px'/>			
			<img src = 'http://placehold.it/200x140' id=photo width = '200px' height = '140px'/>			
			<img src = 'http://placehold.it/200x140' id=photo width = '200px' height = '140px'/>			
			<img src = 'http://placehold.it/200x140' id=photo width = '200px' height = '140px'/>			
			<br><br><br><br>
			<div class = 'btns'>
				<input type = 'button' value = '저장' id = 'btnSave' />
				<input type = 'button' value = '목록' id = 'btnSelect' onClick="history.back()"/>
				
				<!-- 원래 hidden -->
				<input type = 'hidden' name = 'findStr' value = '${param.findStr }' />
				<input type = 'hidden' name = 'nowPage' value = '${param.nowPage }' />
			
			</div>
		</form>
</div>	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
<script>event()</script>
</body>
</html>
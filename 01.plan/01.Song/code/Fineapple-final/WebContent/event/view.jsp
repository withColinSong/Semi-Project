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

	
<div class = 'event-container-view'>
			<div class = 'event_view'>
				<table >
					<tr>
						<th scope='row'>제목</th>
						<td>스마일페이 첫 결제시 즉시 할인</td>
					</tr>
					<tr>
						<th scope='row'>작성일</th>
						<td>2020-09-14</td>
					</tr>
					<tr>
						<th scope='row'>조회수</th>
						<td>35</td>
					</tr>
					<tr class = 'view'>
						<td colspan ='2'>
							<div class ='content'>
							<img src = 'http://nandaglobal.cafe24.com/design1/kr/201201_smilepay1.jpg' id=photo width = '400px' />	
							
							</div>				
						</td>
					</tr>
				</table>
			</div>
</div>
			
	
<!-- buttons -->
	<div class = 'btns'>
		<input type = 'button' value = '목록'  name = 'btnSelect' id = 'btnSelect' onClick = "history.back()"/>
	</div>
			
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
</body>
</html>
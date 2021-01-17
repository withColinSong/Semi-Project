<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업 결과(result)</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/review3.css"> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<script src='<%=request.getContextPath() %>/js/review.js'></script>
</head>
<body>
<div class='review'>
	<!-- header영역 -->
		<jsp:include page="../main/header.jsp"/>
		
	<section class="result_msg">
			<div class="section_result">
				<div class="result_img">
					<img src="<%=request.getContextPath() %>/images/goodjob.jpg">
					<h1 class="result_h1">삭제가 정상적으로 완료되었습니다.</h1>
				</div>
			</div>
		</section>
		<div class='btns'>
			<input type='button' value='목록으로' onclick="location.href='../review.do?job=select'" />
		</div>
		
			    
      <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>		
</div>
<script>review()</script>
</body>
</html>
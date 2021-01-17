<%@page import="review.ReviewVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="review.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>    
     
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Review</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/review3.css"> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
<script src='<%=request.getContextPath() %>/js/review.js'></script>
</head>
<style>

	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
</style>
<body>
<div class="review">
	<!-- header영역 -->
		<jsp:include page="../main/header.jsp"/>
<%
	String mid =(String) session.getAttribute("member_mid");
	request.setAttribute("mid", mid);
%>

<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">커뮤니티</h1>
		<div class="cs_category">
			<a href="<%=request.getContextPath() %>/notice/notice.jsp">공지사항</a>
			<a href="<%=request.getContextPath() %>/event/event.jsp">이벤트</a>
			<a href="review.do?job=select">리뷰 게시판</a>
		</div> 
</header>
<header class="cs_board_title">
	<h1 style="font-size: 2em;">리뷰 게시판</h1>
	</br>
	<h2 style="font-weight: bold">믿음직한 리뷰</h2>
</header>
<!-- 검색하기 -->
	<div id = 'review_search'>
		<form name = 'frm_review' method = 'POST'>
			<div>
				<input type='text' name='findStr' class='findStr' value='${param.findStr}'>
				<input type='button' name='btnFind' id='btnFind' value='검색'/>
				<input type='hidden' name='nowPage' value='${(empty param.nowPage)? 1 : param.nowPage}'/>
				<input type='hidden' name='reviewSerial' />
				<input type="hidden" name="mid" value="${mid }">
			</div>
		</form>
	</div>
 	<div class="container">
 		<div class="row">
 			<table class="review-table" style="text-align: center;"> 
 				<thead>
 					<tr class="table-top">
 						<th class="no" style="background-color: #ffffff; text-align: center;">번호</th>
 						<th class="productName" style="backlground-color: #ffffff; text-align: center;">상품명</th>
 						<th class="title" style="backlground-color: #ffffff; text-align: center;">제목</th>
 						<th class="name" style="background-color: #ffffff; text-align: center;">작성자</th>
 						<th class="date" style="background-color: #ffffff; text-align: center;">작성일</th>
 					</tr>
 				</thead>
 				<tbody>
	 				<c:set var='no' value='${page.startNo}'/>
					<c:forEach var='vo' items="${list}">	
		 				<tr class="table-item" style = "cursor:pointer;" onclick="view('${vo.reviewSerial}')">
		 					<td class="no">${no}</td>
		 					<td class="productName">${vo.productName}</td>
		 					<td class="title">${vo.reviewTitle}</td>
		 					<td class="name">${vo.memberId}</td>
		 					<td class="date">${vo.reviewDate}</td> 
		 				</tr>
	 					<c:set var='no' value = '${no=no+1}'/>
					</c:forEach>
 				</tbody>
 			</table>
 			
 		</div>
 	</div> 
<!-- buttons -->
	<div class = 'btns'>
		<c:if test="${page.startPage>1 }">
			<input type='button' value='맨첨' id='btnFirst' onclick='goPage(1)'/>
			<input type='button' value='이전' id='btnPrev' onclick='goPage(${page.startPage-1})'/>
		</c:if>
		
		<c:forEach var="i" begin='${page.startPage }' end='${page.endPage }'>	
			<input type='button' value='${i }' 
				${(param.nowPage==i)? 'disabled' : '' }  
				onclick='goPage(${i})' />
		</c:forEach>
	
		<c:if test="${page.endPage<page.totPage }">
			<input type='button' value='다음' id='btnNext' onclick='goPage(${page.endPage+1})'/>
			<input type='button' value='맨끝' id='btnLast' onclick='goPage(${page.totPage})'/>
		</c:if>	
		<input class="btn-write" type="button" value="글쓰기" id="btnInsert"/>
	</div>
    
    
      <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
</div>
<script>
review()
</script>
</body>
</html>
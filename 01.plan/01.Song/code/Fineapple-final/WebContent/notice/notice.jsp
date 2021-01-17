<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="notice.NoticeVo"%>
<%@page import="notice.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>
<%	request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>

<link rel="stylesheet" href="../css/notice.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/header.css">
<script type="text/javascript" src="../js/notice.js"></script>
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">
</head>
<body>
<jsp:useBean id="dao" class="notice.NoticeDao"/>

<!-- header -->
	<jsp:include page="/main/header.jsp"/>


<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">커뮤니티</h1>
		<div class="cs_category">
			<a href="../notice/notice.jsp">공지사항</a>
			<a href="../event/event.jsp">이벤트</a>
			<a href="../review.do?job=select">리뷰 게시판</a>
		</div>
</header>
		
<header class="cs_board_title">
	<h1 style="font-size: 2em;">공지사항</h1>
	</br>
	<h2 style="font-weight: bold">FineApple의 최신 뉴스, 바로 확인해보세요! </h2>
	</header>
					
<!-- 검색하기 -->	
	<div id = 'notice_search'>
		<form name = 'frm_notice' method = 'POST'>
		
		<%
		//if(session.getAttribute("member_mid")!=null){
		//if(session.getAttribute("member_mid").equals("kim")){ 
			String admin = (String)session.getAttribute("adminOk");
			if(admin !=null){
		%>
			<input type = 'button'	class ='btnInsert' id = 'btnInsert' value = '입력'/>
		<%} %>
			<div>
				<input type = 'text' name = 'findNotice' id = 'findStr' value = '${param.findNotice }'/>
				<input type = 'button' name = 'btnFind' id = 'btnFind' value='검색'/>
				<input type="hidden" name="noticeNo" size="5" >
				
			</div>
		</form>
	</div>
	
<%		


String findNotice = "";
if(request.getParameter("findNotice") != null) {
	findNotice = request.getParameter("findNotice");
}
	
		List<NoticeVo> list = dao.select(findNotice);
		request.setAttribute("list", list);

	%>	
	
	<!-- notice-title메뉴 -->
	
<div class = "notice-container">
	<div class = 'notice_title'>
		<span class = 'no'>NO</span>
		<span class = 'subject'>제목</span>
		<span class = 'mdate'>작성일</span>
		<span class = 'hit'>조회수</span>
	</div>
	
<!-- notice 글 list -->
	<form name = 'frm_temp' method = 'POST'>

		<div class = 'notice_items'>
				<c:forEach var ='notice' items ='${list }'>
		
			<div class = 'item'>
				<span class = 'no'>${notice.noticeNo }</span>			
				<span class = 'subject' onclick="view('${notice.noticeNo}')" >${notice.noticeSubject }</span>			
				<span class = 'mdate'>${notice.noticeDate }</span>			
				<span class = 'hit'>${notice.noticeHit }</span>			
			</div>
			</c:forEach>
		</div>	
	</form>
		
</div>			

			
	
<!-- buttons -->
	<div class = 'btns'>
		<input type = 'button' value = '<'/>
		<input type = 'button'class = 'num' value = '1'>
		<input type = 'button' value = '>'/>
	</div>
			
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
<script>notice()</script>
</body>
</html>
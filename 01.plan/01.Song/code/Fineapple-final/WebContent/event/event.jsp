<%@page import="event.EventVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event</title>

<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/event.css">
<script type="text/javascript" src="../js/event.js"></script>
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">
</head>
<body>
<jsp:useBean id="dao" class="event.EventDao"/>

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
	<h1 style="font-size: 2em;">이벤트</h1>
	</br>
	<h2 style="font-weight: bold">매일매일 쏟아지는 혜택 </h2>
	</header>
								
<!-- 검색하기 -->	
<div class = 'event_container_list'>
	<div id = 'event_search'>
		<form name = 'frm_event' method = 'POST'>
			<div class = 'event_search_input'>
			<%
			String admin = (String)session.getAttribute("adminOk");
			if(admin !=null){
			%>
				<input type = 'button'	class ='btnInsert' id = 'btnInsert' value = '입력'/>
			<%} %>
				<div class='event_search_box'>
				<input type = 'text' name = 'findStr' id = 'findStr'/>
				<input type = 'button' name = 'btnFind' id = 'btnFind' value = '검색' class='frm_event_btns'/>
				</div>
			</div>
		</form>
	</div>
	

	<%		String findStr = "";
	if(request.getParameter("findStr") != null) {
		findStr = request.getParameter("findStr");
	}
		
			List<EventVo> list = dao.select("");
			request.setAttribute("list", list);

	%>	

	
<!-- event 글 list -->
<!-- <div class = "event-container">
	<c:forEach var="vo" items="${list }"> db연동시 바뀌는 부분
		<div class = 'event_items'>
			<div class = 'item' onclick="view('${vo.serial}')">
				<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' >${vo.subject }</span>			
			</div>
		</div>	
	</c:forEach>
</div> -->			
<div class = "event-container">
		<div class = 'event_items'>
			<ul class = 'item' onclick="view('${vo.serial}')">
				<li onclick="javascript:alert('마감된 이벤트입니다.');" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >Merry holiday event</span>	
					</div>
				</li>
				<li onclick="javascript:alert('마감된 이벤트입니다.');" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2021/01/03/bea36eae062daf97b794e021f4bc8739.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >스마일페이 결제시 할인</span>	
					</div>
				</li>
				<li onclick="javascript:alert('마감된 이벤트입니다.');" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/09/15/72ad5b5e6f225dfc39c274ec9f0ff348.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >전품목세일 이벤트</span>	
					</div>
				</li>
				<li onclick="javascript:alert('마감된 이벤트입니다.');"class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/08/18/1cb8d197f47598054c5f1db88b31d6ef.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >Free Shipping Service</span>	
					</div>
				</li>
				<li onclick="javascript:alert('마감된 이벤트입니다.');" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/08/18/ed6e76c30402c9ac7a24a9dfed47899b.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >6월 신규회원 무료배송 쿠폰 증정</span>	
					</div>
				</li>
				<li onclick="javascript:alert('마감된 이벤트입니다.');" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/08/18/62ad3b1cf822112c4b1bfb5e280bfc33.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >summer season-off sale</span>	
					</div>
				</li>
			</ul>
		</div>	
	
</div>			
</div> 
			
	
<!-- buttons -->
	<div class = 'btns'>
		<input type = 'button' value = '<'/>
		<input type = 'button'class = 'num' value = '1'>
		<input type = 'button' value = '>'/>
	</div>
			
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
<script>event()</script>
<script>
function endevent(){
	alert("마감된 이벤트입니다")
	return;
}


</script>
</body>
</html>
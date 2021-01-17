<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<div class="cs_board">
	<header class="cs_board_title">
	<h1 style="font-size: 2em;">Q&A 게시판</h1>
	</br>
	<h2 style="font-weight: bold">다른 사람들이 궁금해했던 질문, 지금 확인해보세요! </h2>
	</header>
		
	<form action="" name="cs_frm_board" method="post" id="frm_board">
		<div class="cs_board_input">
			<input type="button" name="btnInsert" value="글쓰기" class="frm_board_btns" id="cs_btnInsert"/>
			<div class="cs_board_input_select-box">
			
			<input type="hidden" name="nowPage" value="${(empty param.nowPage)? 1: param.nowPage}"/>
			<select name="cs_findType" id="cs_findType" aria-placeholder="문의 유형" size="1" style="width: 24%; height: 30px; border:none; border-bottom: 1px solid #000000;">
		        <option value="null">문의 유형</option>
		        <option value="환불">환불</option>
		        <option value="취소">취소(출하 전 취소)</option>
		        <option value="배송">배송</option>
		        <option value="불량AS">불량/AS</option>
		        <option value="주문결제">주문/결제</option>
		        <option value="상품재입고">상품/재입고</option>
		        <option value="적립금">적립금</option>
		        <option value="회원관련">회원 관련</option>
		        <option value="기타문의">기타 문의</option>
		        <option value="신고">신고</option>
		    </select>
			<input type="text" name="findStr" placeholder="검색어를 입력해주세요!" value="${param.findStr }"/>
			<input type="button" name="cs_board_btnFind" id="cs_board_btnFind" value="조회" class="frm_board_btns" />
			<input type='hidden' name='serial'  value='0'/>
			<input type='hidden' name='findType'  value=''/>
			<input type='hidden' name='hit'  value='0'/>
			</div>
		</div>
		<div id="cs_modal">
			<div class="cs_modal_content">
				<h3>설정하셨던 비밀번호를 입력해주세요.</h2>
				<input type="password" name="checkpwd" id="cs_modal_input"  required="required">
				<input type="button" value="전송" id="cs_view_btnGoPage" class="cs_modal_sava_btn"/>
				<input type="button" value="취소" id="cs_modal_close_btns" class="cs_modal_cancel_btn"/>
			</div>
			<div class="modal_layer">
			</div>
		</div>
	</form>
	
	<div class="cs_board_article">
		<span class="no">No</span>
		<span class="subject">제목</span>
		<span class="name">작성자</span>
		<span class="mdate">작성일자</span>
		<span class="hit">조회수</span>
	</div>
	
	<div class="cs_board_items">
		<c:set var="no" value="${page.startNo}"></c:set>
			<% 
			String admin = (String)session.getAttribute("adminOk");
			if(admin != null) {
			%>
			<c:forEach var="vo" items="${list}">
						<div class="cs_board_item" onclick="view('${vo.serial}', '${vo.hit}')">
							<span class="no">${no}</span>
							<span class="subject">${vo.subject}</span>
							<span class="name">${vo.memberName}</span>
							<span class="mdate">${vo.created}</span>
							<span class="hit">${vo.hit}</span>
						</div>
				<c:set var="no" value="${no=no+1 }"></c:set>	
			</c:forEach>
			<%}
			else {
			%>
			<c:forEach var="vo" items="${list}">
				<c:set var="visible" value="${vo.docVisible}"></c:set>
				<c:choose>
					<c:when test="${visible == 'yes'}">
						<div class="cs_board_item" onclick="secretview('${vo.serial }','${vo.pwd}', '${vo.hit}')">
							<span class="no">${no}</span>
							<span class="subject">
								<img alt="" src="<%= request.getContextPath() %>/images/lock_icon3.png" class="cs_board_secret"> ${vo.subject}</span>
							<span class="name">${vo.memberName}</span>
							<span class="mdate">${vo.created}</span>
							<span class="hit">${vo.hit} </span>
						</div>
					</c:when>
					<c:otherwise>   
						<div class="cs_board_item" onclick="view('${vo.serial}', '${vo.hit}')">
							<span class="no">${no}</span>
							<span class="subject">${vo.subject}</span>
							<span class="name">${vo.memberName}</span>
							<span class="mdate">${vo.created}</span>
							<span class="hit">${vo.hit}</span>
						</div>
					</c:otherwise>
				</c:choose>	
				<c:set var="no" value="${no=no+1 }"></c:set>	
			</c:forEach>
			<%} %>
	</div>
	
	<div class="cs_board_paging">
		<%-- <c:if test="${page.startPage>1}"> --%>
			<input type="button" value="first" id="paging_btns" onclick="goPage(1)">
			<input type="button" value="<">
		<%-- </c:if> --%>
			<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
				<input type="button" value="${i}" onclick="goPage(${i})">
			</c:forEach>
		<%-- <c:if test="${page.endPage<page.totPage }"> --%>
			<input type="button" value=">" onclick="goPage(${page.endPage+1})">
			<input type="button" value="end" id="paging_btns" onclick="goPage(${page.totPage})">
		<%-- </c:if> --%>		
	</div>

</div>
<script type="text/javascript">
inquiry()
</script>
</body>
</html>
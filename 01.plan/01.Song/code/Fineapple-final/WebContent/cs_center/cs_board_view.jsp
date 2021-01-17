<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<script type="text/javascript" src="./js/inquirybook.js"></script>
</head>
<body>
<div class="cs_notice_view_container">	
	<form action="notice.do" name="frm_cs_notice" id="frm_cs_notice">
		<div class="frm_cs_notice_body">
			<div class="frm_cs_notice_view_body_item">
				<a href="cs_func_page.jsp?func=./cs_center/cs_board.jsp" style="color: rgb(91, 135, 164); font-size: 0.8em; margin-bottom: 15px; display: block;"> 게시판으로 돌아가기 > </a>
				</br>
				<h1>제목: ${viewVo.subject}</h1>
				</br>
				<div class="cs_notice_view_imfo">
					<span>조회수: ${viewVo.hit}</span>
					<span>작성자: ${viewVo.name}</span>
					<span>작성 일자: ${viewVo.mdate}</span>
				</div>
			</div> 
			</br>
			<textarea rows="12" cols="70" name="doc" id="doc" readOnly style="border: 0; font-size: 1.1em; resize: none;">${viewVo.doc }</textarea>
		</div>
		<div class="cs_notice_view_repl">
			<h3>첨부 사진</h3>
			<div class="cs_notice_view_repl_form">
			</div>
		</div>
		<div class="cs_center_notice_insert_send_box">
			<input type="button" value="수정" id="cs_notice_insert_save" class="cs_center_insert_btns">
			<input type="button" value="삭제" id="cs_notice_insert_save" class="cs_center_insert_btns">
			<input type="button" value="답변" id="cs_notice_insert_save" class="cs_center_insert_btns">
			<input type="button" value="목록으로" id="cs_notice_insert_cancel" class="cs_center_insert_btns">
		</div>
		<input type="hidden" value="insert" name="notice">
	</form>
</div>


<script type="text/javascript">
notice()
autoscroll()
</script>
</body>
</html>
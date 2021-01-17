<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
</head>
<body>
<div class="cs_answer_body">	
	<header class="cs_answer_title">
		<h2>운영자 답변</h2>
		</br>
	</header>
	<form action="inquiry.do" name="cs_frm_board" id="frm_cs_notice" method="post">
		<div class="frm_cs_notice_body">
			<div class="frm_cs_notice_body_item">
				<label>제목</label>
				<input type="text" name="subject" id="subject" placeholder="제목을 입력해주세요." value="${param.subject }" required>
				<label>작성자</label>
				<input type="text" name="name" id="name" value="운영관리자" readOnly>
			</div> 
			</br>
			<textarea rows="20" cols="70" name="doc" id="doc" placeholder="내용을 입력해주세요." required></textarea>
		</div>
		<div class="cs_answer_attach_body">
			<label>첨부 파일</label>
			<div id="cs_answer_attach_box">
			
			</div>			
		</div>
		<div class="cs_center_notice_insert_send_box">
			<input type="button" value="전송" id="cs_answer_btnSave" class="cs_insert_btnSave">
			<input type="button" value="취소" id="cs_answer_btnSelect" class="cs_insert_btnCancel">
			<input type="button" value="목록으로" id="cs_answer_btnCancel" class="cs_insert_btnCancel">
		</div>
		<input type="hidden" value="${param.serial}" name="pserial">
		<input type="hidden" value="${param.serial}" name="serial">
		<input type="hidden" name="nowPage" value="${param.nowPage}"/>
		<input type="hidden" name="findStr" value="${param.findStr}"/>
		<input type="hidden" name="mserial" value="0"/>
		<input type="hidden" name="inquiryType" value="${param.inquiryType }"/>
		<input type="hidden" name="docvisible" value="${param.docvisible}"/>
		<input type="hidden" name="hit" value="${param.hit}"/>
		<input type="hidden" name="pwd" value="${param.pwd}"/>
		<input type="hidden" name="pserial" value="0"/>
	</form> 
</div>

<script type="text/javascript">
fileUpload('cs_answer_attach_box')
</script>
</body>
</html>
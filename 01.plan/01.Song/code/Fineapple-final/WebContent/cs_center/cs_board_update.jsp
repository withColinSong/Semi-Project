<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<script type="text/javascript" src="./js/inquirybook.js"></script>
</head>
<body>
<div>	
	<header class="cs_notice_insert_title">
		<h2>공지사항</h2>
		</br>
		<h3>새로운 소식을 확인하세요!</h3>
	</header>
	<form action="notice.do" name="frm_cs_notice" id="frm_cs_notice">
		<div class="frm_cs_notice_body">
			<div class="frm_cs_notice_body_item">
				<label>제목</label>
				<input type="text" name="subject" id="subject" placeholder="제목을 입력해주세요.">
				<label>작성자</label>
				<input type="text" name="name" id="name" value="운영관리자" readOnly>
			</div> 
			</br>
			<textarea rows="12" cols="70" name="doc" id="doc" placeholder="내용을 입력해주세요."></textarea>
		</div>
		
		<div class="cs_center_notice_insert_send_box">
			<input type="button" value="전송" id="cs_notice_insert_save" class="cs_center_insert_btns">
			<input type="button" value="취소" id="cs_notice_insert_cancel" class="cs_center_insert_btns">
		</div>
		<input type="hidden" value="insert" name="notice">
	</form>
</div>


<script type="text/javascript">
notice()
</script>
</body>
</html>
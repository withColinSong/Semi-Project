<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="cs_root">
		<button type="button" id="modal_open_btn">모달창 만들기</button>

	</div>
	<div id="cs_modal">
		<div class="cs_modal_content">
			<h3>설정하셨던 비밀번호를 입력해주세요.</h2>
			<input type="password" name="pwd" id="cs_modal_input"  required="required">
			<input type="button" value="전송" id="cs_modal_save_btn" class="cs_modal_btns"/>
			<input type="button" value="취소" id="cs_modal_close_btns" class="cs_modal_btns"/>
			<input type="button" value="취소" id="cs_modal_btnOpen" class="cs_modal_btns" style="display: none;"/>
		</div>
		<div class="modal_layer"></div>
	</div>
</body>
</html>
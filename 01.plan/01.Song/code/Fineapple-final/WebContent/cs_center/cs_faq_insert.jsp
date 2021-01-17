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
		<h2>FAQ 작성</h2>
		</br>
	</header>
	<form action="inquiry.do" name="cs_frm_board" id="frm_cs_notice" method="post">
		<div class="frm_cs_notice_body">
			<div class="frm_cs_notice_body_item">
				<label style="width: 40px;">제목</label>
				<input type="text" name="subject" id="subject" placeholder="제목을 입력해주세요." required>
				<label for="inquiryType">문의 유형</label>
				    <select name="cs_inquiryType" id="cs_inquiryType" aria-placeholder="문의 유형" size="1" style="width: 14%; height: 30px; border: 1px solid #f1f1f1; margin-right: 30px;" required>
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
				<label>작성자</label>
				<input type="text" name="name" id="name" value="운영관리자" readOnly>
			</div> 
			</br>
			<textarea rows="20" cols="70" name="doc" id="doc" placeholder="내용을 입력해주세요." required></textarea>
		</div>
		<div class="cs_center_notice_insert_send_box">
			<input type="button" value="전송" id="cs_faq_btnSave" class="cs_insert_btnSave">
			<input type="button" value="목록으로" id="cs_faq_btnCancel" class="cs_insert_btnCancel">
		</div>
		<input type="hidden" value="${param.serial}" name="pserial">
		<input type="hidden" value="${param.serial}" name="serial">
		<input type="hidden" name="nowPage" value="${param.nowPage}"/>
		<input type="hidden" name="findStr" value="${param.findStr}"/>
		<input type="hidden" name="mserial" value="0"/>
		<input type="hidden" name="inquiryType" value=""/>
		<input type="hidden" name="docvisible" value="${param.docvisible}"/>
		<input type="hidden" name="hit" value="${param.hit}"/>
		<input type="hidden" name="pwd" value="${param.pwd}"/>
		<input type="hidden" name="pserial" value="0"/>
	</form> 
</div>

<script type="text/javascript">
</script>
</body>
</html>
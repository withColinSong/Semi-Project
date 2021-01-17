<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
				<input type="text" name="subject" id="subject" placeholder="제목을 입력해주세요." value="${vo.subject }" required>
				<label>작성자</label>
				<input type="text" name="name" id="name" value="운영관리자" readOnly>
			</div> 
			</br>
			<textarea rows="20" cols="70" name="doc" id="doc" placeholder="내용을 입력해주세요." required>${vo.doc}</textarea>
		</div>
		<div class="cs_attach_container">
			<div id="cs_attach_box_ori_answer">
				<label style="display: inline-block; margin: 0 10px 10px 0;">기존 사진</label>
				<span style="font-size: 0.8em;">(삭제하시려면 아래 체크 박스를 클릭해주세요.)</span>
				</br>
				<c:forEach items="${vo.attList }" var="att">
					<div class="att_file_box">
						<img alt="" src="<%=request.getContextPath() %>/inquiryUpload/${att.sysFile}" class="view_img">
						<input type="checkbox" name='delFiles'  value='${att.sysFile }' style="background-image: url('<%=request.getContextPath() %>/images/xxxx.png');"/>
					</div>
				</c:forEach>
			</div>
			
			<div id="cs_attach_box_answer">
				<label style="display: inline-block; margin: 0 10px 10px 0;">변경 사진</label>	
				<span style="font-size: 0.8em;">(추가하시려면 아래 포토 박스를 클릭해주세요.)</span>
				</br>
			</div>
		</div>	
		<div class="cs_center_notice_insert_send_box">
			<input type="button" value="전송" id="cs_update_answer_btnSave" class="cs_insert_btnSave">
			<input type="button" value="취소" id="cs_update_btnReturn" class="cs_insert_btnCancel">
			<input type="button" value="목록으로" id="cs_view_btnCancel" class="cs_insert_btnCancel">
		</div>
		<input type="hidden" value="${param.pserial}" name="pserial">
		<input type="hidden" value="${param.serial}" name="serial">
		<input type="hidden" name="nowPage" value="${param.nowPage}"/>
		<input type="hidden" name="findStr" value="${param.findStr}"/>
		<input type="hidden" name="mserial" value="0"/>
		<input type="hidden" name="inquiryType" value="0"/>
		<input type="hidden" name="docvisible" value="${param.docvisible}"/>
		<input type="hidden" name="hit" value="${param.hit}"/>
		<input type="hidden" name="pwd" value="${param.pwd}"/>
		<input type="hidden" name="pserial" value="0"/>
	</form> 
</div>

<script type="text/javascript">
fileUpload('cs_attach_box_answer')
</script>
</body>
</html>
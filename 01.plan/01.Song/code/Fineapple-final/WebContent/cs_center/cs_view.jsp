<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
</head>
<body>
<div class="cs_notice_view_container">	
	<form action="" name="cs_frm_board" id="frm_cs_notice" method="post">
		<div class="frm_cs_notice_body">
			<div class="frm_cs_notice_view_body_item">
				</br>
				<h1>제목: ${vo.subject}</h1>
				</br>
				<div class="cs_notice_view_imfo">
					<span>조회수: ${vo.hit}</span>
					<span>작성 일자: ${vo.created}</span>
					<span>작성자: ${vo.memberName}</span>
					<span>문의 유형: ${vo.inquiryType}</span>
				</div>
			</div> 
			</br>
			<textarea rows="12" cols="70" name="doc" id="doc" readOnly style="border: 0; font-size: 1.1em; resize: none;">${vo.doc }</textarea>
		</div>
		<div class="cs_notice_view_repl">
			<h3>첨부 사진</h3>
			<div class="cs_notice_view_repl_form">
				<c:forEach items="${vo.attList }" var="att">
				<img alt="" src="<%=request.getContextPath() %>/inquiryUpload/${att.sysFile}" class="view_img">
				</c:forEach>
			</div>
		</div>
		<div class="cs_center_notice_insert_send_box">
         <c:set var="pserial" value="${vo.pserial }"></c:set>

         <%
         String admin = (String)session.getAttribute("adminOk");
         if(admin !=null){
         %> 
         <c:if test="${pserial != '0'}">
            <input type="button" value="수정" id="cs_view_btnUpdate_admin" class="cs_insert_btnSave" >
            <input type="button" value="삭제" id="cs_view_btnDelete_admin" class="cs_insert_btnSave">
            <input type="button" value="답변" id="cs_answer_btnInsert" class="cs_insert_btnCancel" style="float: right; background-color: rgb(91, 135, 164); color: #ffffff;">
         </c:if>
         <c:if test="${pserial == '0'}">
            <input type="button" value="삭제" id="cs_view_btnDelete_admin" class="cs_insert_btnSave">
            <input type="button" value="답변" id="cs_answer_btnInsert" class="cs_insert_btnCancel" style="float: right; background-color: rgb(91, 135, 164); color: #ffffff;">
         </c:if>   
         <%} 
         else { %>
		 <c:if test="${pserial == '0'}">
               <input type="button" value="수정" id="cs_view_btnOpen_update" class="cs_insert_btnSave">
               <input type="button" value="삭제" id="cs_modal_btnOpen" class="cs_insert_btnSave">
         </c:if>
		<%}%>
			<input type="button" value="목록으로" id="cs_view_btnCancel" class="cs_insert_btnCancel">
			<input type="hidden" value="${param.nowPage}" name="nowPage"/>
			<input type="hidden" value="${param.findStr}" name="findStr"/>
			<input type='hidden' name='serial'  value='${vo.serial }'/>
			<input type='hidden' name='pwd'  value='${vo.pwd}'/>
			<input type="hidden" name="docvisible" value="${vo.docVisible}"/>
			<input type="hidden" name="hit" value="${vo.hit}"/>
			<input type="hidden" name="pserial" value="${vo.pserial }">
			<input type="hidden" name="subject" value="${vo.subject}">
			<input type="hidden" name="inquiryType" value="${vo.inquiryType}">
		</div>
		<div id="cs_modal">
			<div class="cs_modal_content">
				<h3>설정하셨던 비밀번호를 입력해주세요.</h2>
				<input type="password" name="checkpwd" id="cs_modal_input"  required="required">
				<input type="button" value="전송" id="cs_view_btnDelete" class="cs_modal_sava_btn"/>
				<input type="button" value="취소" id="cs_modal_close_btns" class="cs_modal_cancel_btn"/>
			</div>
			<div class="modal_layer"></div>
		</div>
		<div id="cs_modal_update">
			<div class="cs_modal_content">
				<h3>설정하셨던 비밀번호를 입력해주세요.</h2>
				<input type="password" name="checkpwd_update" id="cs_modal_input_update" >
				<input type="button" value="전송" id="cs_view_btnUpdate" class="cs_modal_sava_btn"/>
				<input type="button" value="취소" id="cs_modal_close_btn_update" class="cs_modal_cancel_btn"/>
			</div>
			<div class="modal_layer"></div>
		</div>
	</form>
</div>


<script type="text/javascript">
inquiry()
modal()
modalUpdate()
</script>
</body>
</html>
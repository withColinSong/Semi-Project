<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="cs_insert_body">
	<header class="cs_insert_title">
	<h1 style="font-size: 2em;">Q&A</h1>
	</br>
	<h2 style="font-weight: bold">궁금하신 점을 지금 바로 물어보세요!</h2>
	</header>
	
	<div class="cs_insert_notice">
		<ul style="list-style-type: disc;">
			<li>제품 사용, 오염, 전용 박스 손상, 라벨 제거, 사은품 및 부속 사용/분실 시, 교환/환불이 불가능합니다.</li>
			<li>교환을 원하시는 상품의 재고가 부족 시, 교환이 불가능합니다.</li>
			<li>반품 시 택배를 통해서 진행하시거나 매장을 방문해주세요.</li>
			<li>고객님의 주문 내역을 선택, 질문이 필요한 상품을 선택하시면 1:1 상담이 가능합니다.</li>
			<li>주문 취소/교환/환물은 <a>마이페이지 > 주문 내역</a>에서 신청하실 수 있습니다.</li>
			<li>1:1 문의 처리 내역은 <a>마이페이지 > 1:1문의</a>를 통해 확인하실 수 있습니다.</li>
			<li>상품 정보 관련 문의는 해당 상품 문의에 남기셔야 빠른 답변이 가능합니다.</li>
		</ul>
	</div>
		
	<form action="" method="post" name="cs_frm_board" id="frm_question">
		<div class="cs_insert_frm_container">
		    <div class="cs_insert_frm_body">
		    	<div>
				    <label for="inquiryType">문의 유형</label>
				    <select name="inquiryType" id="inquiryType" size="1" style="width: 75%; height: 30px; border: 1px solid #f1f1f1;" required>
				        <option value="${vo.inquiryType}">${vo.inquiryType}</option>
				        <option value="환불">환불</option>
				        <option value="취소">취소(출하 전 취소)</option>
				        <option value="배송">배송</option>
				        <option value="불량/AS">불량/AS</option>
				        <option value="주문/결제">주문/결제</option>
				        <option value="상품/재입고">상품/재입고</option>
				        <option value="적립금">적립금</option>
				        <option value="회원 관련">회원 관련</option>
				        <option value="기타 문의">기타 문의</option>
				        <option value="신고">신고</option>
				    </select>
				</div>
		
				<div>
		   			<label for="name">작성자</label>
		  		 	<input type="text" value="${vo.memberName }" name="name" id="cs_name" size="25" style="width: 75%; height: 30px" required/>	
				</div>

				<div id="cs_attach_box_ori">
					<label style="display: inline-block;">기존 사진</label>
					<span>(삭제하시려면 아래 체크 박스를 클릭해주세요.)</span>
					</br>
					<c:forEach items="${vo.attList }" var="att">
						<div class="att_file_box">
							<img alt="" src="./inquiryUpload/${att.sysFile }" class="view_img">
							<input type="checkbox" name='delFiles'  value='${att.sysFile }' style="background-image: url('<%=request.getContextPath() %>/images/xxxx.png');"/>
						</div>
					</c:forEach>
				</div>
				
				<div id="cs_attach_box">
					<label style="display: inline-block;">변경 사진</label>	
					<span>(추가하시려면 아래 포토 박스를 클릭해주세요.)</span>
					</br>
				</div>
	  		</div>
	  		<div class="cs_insert_frm_body">
		  		<div style="margin-bottom: 10px;">
					<label for="subject" style="display:inline-block; width: 10%;">제목</label>
					<input type="text" name="subject" value="${vo.subject }" id="cs_subject" placeholder="제목을 입력해주세요." style="width: 89%; height: 30px;" required>
				</div>
	  			<div class="cs_insert_doc">
	  				<label for="doc" style="display:inline-block; width: 10%;">본문</label>
	  				<textarea name="doc" id="cs_doc" rows="26" style="width: 89%; border: 1px solid #f1f1f1" required>${vo.doc}</textarea>
	  			</div>
	  		</div>
		</div>
		<div class="cs_center_insert_send_box">
			       <label for="secretcheck">비밀글</label>
			       <input type="checkbox" name="secretcheck" id="cs_check" value="secret">
			       <input type="button" value="전송" id="cs_modal_btnOpen" class="cs_insert_btnSave">
			       <input type="button" value="돌아가기" id="cs_update_btnReturn" class="cs_insert_btnCancel">
			       <input type="button" value="목록으로" id="cs_view_btnCancel" class="cs_insert_btnCancel">
		</div>
		<input type="hidden" name="nowPage" value="${param.nowPage}">
		<input type="hidden" name="findStr" value="${param.findStr}">
		<input type='hidden' name='serial'  value="${param.serial}"/>
		<input type="hidden" name="mserial" value="0"/>
		<input type="hidden" name="inquiryType" value=""/> 
		<input type="hidden" name="docvisible" value="${param.docVisible}"/>
		<input type="hidden" name="hit" value="${param.hit}"/>
		<input type="hidden" name="pserial" value="0"/>
		<input type="hidden" name="pwd" value="${param.pwd}">
		
		<div id="cs_modal">
			<div class="cs_modal_content">
				<h3>설정하셨던 비밀번호를 입력해주세요.</h2>
				<input type="password" name="checkpwd" id="cs_modal_input"  required="required">
				<input type="button" value="전송" id="cs_update_btnSave" class="cs_modal_sava_btn"/>
				<input type="button" value="취소" id="cs_modal_close_btns" class="cs_modal_cancel_btn"/>
			</div>
			<div class="modal_layer"></div>
		</div>
	</form>
</div>

<script type="text/javascript">
fileUpload('cs_attach_box')
modal()
</script>
</body>
</html>
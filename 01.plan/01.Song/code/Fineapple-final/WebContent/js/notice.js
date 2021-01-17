/**
 * 
 */

var view = function(noticeNo) {
	var frm = document.frm_notice;
	frm.action = '../notice/view.jsp'
	frm.noticeNo.value = noticeNo;
	frm.submit();
}
var notice = function() {

	var frm = document.frm_notice;
	var btnInsert = document.getElementById('btnInsert');
	
	if(btnInsert != null){
		btnInsert.onclick = function(){
			frm.action = '../notice/insert.jsp';
			frm.submit();
	}
			
	}

	var btnSave= document.getElementById('btnSave');

	if(btnSave != null){
		btnSave.onclick = function(){
			var checkFlag = true;
			
			if(!frm.noticeSubject.checkValidity()){
				alert('제목을입력하세요');
				checkFlag = false;
			}else if(!frm.noticeDoc.checkValidity()){
				alert('제목을입력하세요');
				checkFlag = false;
				}
				
			if(checkFlag){
			frm.action = '../notice/insert_result.jsp';
			frm.submit();
			}
		}
	}	
	var btnFind= document.getElementById('btnFind');

	if(btnFind != null){
		btnFind.onclick = function(){
			frm.action = "../notice/notice.jsp";
			frm.submit();
		}
	}
	


	var btnDelete = document.getElementById('btnDelete');
		if(btnDelete !=null) {
			btnDelete.onclick = function(){
			let pwd = prompt("암호입력");
			if(pwd==0000){
				alert('관리자 확인 완료');
				frm.action = '../notice/delete_result.jsp'
				frm.submit();
			}else {
		alert('암호를 다시 확인하세요');
		return;
	}
	}
	}
	var btnModify = document.getElementById('btnModify');
		if(btnModify !=null) {
			btnModify.onclick = function(){
				frm.action = '../notice/update.jsp'
				frm.submit();
			
	}
	}
}





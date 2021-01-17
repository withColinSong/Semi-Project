/**

작성자: 정해준
작성일자: 2021-01-11


 */

var goPage = function(page) {
	var frm = document.frm_admin;
	frm.nowPage.value = page;
	frm.action = "admin.do?job=productSelect";
	frm.submit();		
}
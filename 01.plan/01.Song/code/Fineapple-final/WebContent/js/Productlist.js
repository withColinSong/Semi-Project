/**
 * 
 */

 function getID(id) { return document.getElementById(id)}
var board = function()	{

	var frm = document.frm_search;
	var btnFind = getID('btnFind');
	if(btnFind != null){
		btnFind.onclick = function() {
			frm.action = 'product_list/select.jsp';
			frm.submit();
		}
	}
	}
	
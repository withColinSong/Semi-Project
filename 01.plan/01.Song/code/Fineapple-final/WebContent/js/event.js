/**
 * 
 */
function getID(id) { return document.getElementById(id)}

var event = function() {

	var frm = document.frm_event;
	
	var btnInsert = getID('btnInsert');
	var btnSave = getID('btnSave');
	
	if(btnInsert != null){
		btnInsert.onclick = function(){
			frm.action = '../event/insert.jsp';
			frm.submit();
	}
	
	}

	
	if(btnSave != null){
		btnSave.onclick = function(){
			frm.action = '../event/event.jsp';
			frm.submit();
		}
	}	
	
				
}
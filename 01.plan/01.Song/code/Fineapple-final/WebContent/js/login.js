/**
 * 
 */

var logInOut = function(){

	
	var btnLogin = document.getElementById('btnLogin'); //document에서 element를 가져오는데 아이디를 사용해서 가져와라 object이름은 btnLogin으로 하겠따
	var btnLogout = document.getElementById('btnLogout');
	
	if(btnLogin != null){
	btnLogin.onclick = function(){
		var frm = document.form_log; //name가져옴
		frm.action = '/Fineapple-final/login/login.jsp';
		frm.submit();
	}
	}
		
	if(btnLogout != null){
	btnLogout.onclick = function(){
		if( confirm("정말 로그아웃 하시겠습니까?")){
		alert("로그아웃되었습니다");
		location.href = '/Fineapple-final/login/logout.jsp';
		}
	}
	}

}
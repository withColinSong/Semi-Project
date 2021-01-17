<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input_pwd</title>
</head>
<body>
<div id="input_pwd">
	<div>
		암호를 입력하세요
	</div>
	<input type="password" id="pwd"/>
	<input type="button" value="확인" id="btnPwdConfirm"/>
</div>
<script type="text/javascript">
var btnPwdConf = document.getElementById('btnPwdConfirm');
btnPwdConf.onclick = function(){
	var pwd = document.getElementById('pwd').value;
	pwd == 1234;
	self.close();
}
</script>
</body>
</html>
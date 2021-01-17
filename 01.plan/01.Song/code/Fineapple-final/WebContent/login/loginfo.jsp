<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <script src='../js/login.js'></script>
      <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">  
</head>
<body>
		<!-- header영역 -->
	<jsp:include page="/main/header.jsp"/>

    <div class="container">
    <h3>로그인</h3>
        <section class="form-write">
			<form name='form_log' method='post'>
                <div class="align">
                    <input type="text" id="mid" name = "member_mid" placeholder="FineApple ID">
                     <div class="text-id">
                       
                    </div> 
                    <label></label>
                    <input type="password" id="pwd" name = "member_pwd" placeholder="암호">
                   <div class="text-id">
                        
                    </div> 
                    <input type="submit" id="btnLogin" value="로그인">
                </div>
            </form>
            <section class="login-search">
                <div class="login-id">
                    <a href="./findId.jsp">아이디찾기</a>
                </div>
                <div class="login-pw">
                    <a href="./findPw.jsp">비밀번호 찾기</a>
                </div>
                <div class="login-join">
                    <a href="../UsersJoin/agree.jsp">회원가입</a>
                </div>
            </section>
            <div class="item-center">
                <div class="flex-1"></div>
                <span>OR</span>
                <div class="flex-1"></div>
            </div>
        </section>
        
        
        <section class="login-write">
            <div class="button-login" align ="center" >
                <a id="kakao-login-btn" >
    <img src="//k.kakaocdn.net/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="83%" height ="50px" />
    </a>
            </div>
            
        </section>
    </div>
    <div class="footer-align">
        <hr>
        <div class="help-box">도움이 더 필요하신가요? <a href="chat.jsp">지금 채팅하기</a> 또는 080-330-8877 번호로 문의하세요.</div>
        <   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
    </div>
    <script>logInOut()</script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src = "https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
Kakao.init('362fc9db35abfa51480830ded68d8130');


$("#kakao-login-btn").on("click", function(){
    //1. 로그인 시도
    Kakao.Auth.login({
        success: function(authObj) {
          //console.log(JSON.stringify(authObj));
          //console.log(Kakao.Auth.getAccessToken());
          //2. 로그인 성공시, API를 호출합니다.
          Kakao.API.request({
            url: '/v2/user/me',
            success: function(res) {
              //console.log(JSON.stringify(res));
              console.log(res);
              var id = res.id;
			  scope : 'account_email';
			alert('로그인성공');
              //var email = res.kakao_account.email;
			  //var name = res.properties.nickname;
			  location.href="http://localhost:9094/Fineapple-final/login/kakaocallback.jsp";
		

              
        }
          })
          console.log(authObj);
          var token = authObj.access_token;
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
        
}) //e.o.kakao


</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="../css/header.css">
		<link rel="stylesheet" href="../css/footer.css">
		<link rel="stylesheet" href="../css/UsersJoin/UsersJoin.css">
		<link rel="stylesheet" href="../css/UsersJoin/agree.css">
		<link rel="stylesheet" href="../css/indexstyle.css">

		<script src="https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/xmas/snow.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="../js/userjoin/userjoin.js"></script>
		<script src="../js/userjoin/agree.js"></script>
	    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	</head>

	<body class="body">
<!-- header영역 -->
	<jsp:include page="../main/header.jsp"/>
	
	
		<div class="div-container">

			<section class="section-one">
				<div class="section-welcome">
					<div class="welcome-img">
						<img src="../images/UsersJoin/agree.png">
					</div>
					<h1 class="welcome-head">서비스약관에 동의해주세요.</h1>
					<hr class="section-hr">
				</div>
			</section>

			<div class="agree-align">
				<div class="terms-box">
					<div>
						<input id="check_all" type="checkbox">
						<label for="check_all" class="check-agree-label">모두 동의합니다.</label>
					</div>
				</div>

				<div class="agree-every">
					전체동의는 필수 및 선택정보에 대한 동의도 포함되어 있으며, 개별적으로도 동의를 선택하실 수 있습니다. 선택항목에 대한 동의를 거부하시는 경우에도 서비스는 이용이 가능합니다.
				</div>

				<div class="terms-box terms-box-font">
						<input id="check-agree-two" name="agree-nec" type="checkbox">
						<label for="check-agree-two">[필수] FineApple계정 약관</label>
						<button class="btnLink" id="agree-id"><img src="../images/UsersJoin/arrow.png"></button>
				</div>
				
				<div id="modal">
   					<button type="button" id="modal_close_btn">X</button>
				    <div class="modal_content">
				       <jsp:include page="./agree/self.jsp"></jsp:include>
				        
				       
				    </div>
				   
				    <div class="modal_layer"></div>
				</div>	

				<div class="terms-box terms-box-font" >
						<input id="check-agree-three" name="agree-nec" type="checkbox">
						<label for="check-agree-three" >[필수] 개인정보 수집 및 이용 동의</label>
						<button class="btnLink" id="agree-service"><img src="../images/UsersJoin/arrow.png"></button>
				</div>
				
				<div id="modal">
   					<button type="button" id="modal_close_btn">X</button>
				    <div class="modal_content">
				       <jsp:include page="./agree/self2.jsp"></jsp:include>
				        
				       
				    </div>
				   
				    <div class="modal_layer"></div>
				</div>

				<div class="terms-box terms-box-font">
						<input id="check-agree-four" type="checkbox">
						<label for="check-agree-four">
							[선택] 위치정보 수집 및 이용 동의</label>
						<button class="btnLink" id="agree-locate" required><img src="../images/UsersJoin/arrow.png"></button>
				</div>
				
				
				<div id="modal">
   					<button type="button" id="modal_close_btn">X</button>
				    <div class="modal_content">
				       <jsp:include page="./agree/self3.jsp"></jsp:include>
				        
				       
				    </div>
				   
				    <div class="modal_layer"></div>
				</div>
				
				
				<div class="terms-box terms-box-font">
					<div>
						<input id="check-agree-five" type="checkbox">
						<label for="check-agree-five" aria-required="true">[선택]FineApple 광고메시지 수신</label>
						<button class="btnLink" id="agree-adv"><img src="../images/UsersJoin/arrow.png"></button>
					</div>
				</div>

				<div id="modal">
   					<button type="button" id="modal_close_btn">X</button>
				    <div class="modal_content">
				       <jsp:include page="./agree/self4.jsp"></jsp:include>
				        
				       
				    </div>
				   
				    <div class="modal_layer"></div>
				</div>

				<form action="index.jsp" name="frmAgree" id="frmAgree" method="POST">
					<div class="button-next">
						<button class="agree-btn">취소</button>
						<button class="agree-btn" id="agreeBtn"name="agree-total">다음</button>
					</div>
				</form>
			</div>

		</div>


		<footer>
			<jsp:include page="/main/footer.jsp"></jsp:include>
		</footer>


		<script>
			member();
			modal();


		$(document).ready(function(){

			/* */
            $("#agreeBtn").click(function(){    
	                if($("#check-agree-two").is(":checked") == false){
	                    alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
	                    return false;
	                }else if($("#check-agree-three").is(":checked") == false){
	                    alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
	                    return false;
	                }else{
	                    $("#frmAgree").submit();
	                }
	         });

            /*모두 동의합니다. */
			$(".div-container").on("click", "#check_all", function () {
				  var checked = $(this).is(":checked");

				  if(checked){
				  	$(this).parents(".div-container").find('input').prop("checked", true);
				  } else {
				  	$(this).parents(".div-container").find('input').prop("checked", false);
				  }
			});    
			
        }); // $(document).ready(function(){

			
						
		</script>
	</body>

	</html>
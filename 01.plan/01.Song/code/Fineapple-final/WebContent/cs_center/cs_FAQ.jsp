<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!doctype html>
<html>

<head>
<title>FAQ</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<style>
</style>
</head>

<body>
<div class="cs_faq_body">
	<header class="cs_faq_title">
		<h1 style="font-size: 2em;">FAQ</h1>
		</br>
		<h2 style="font-weight: bold">많은 고객님들이 물어보셨던 질문입니다. 여러분의 질문을 찾아보세요!</h2>
	</header>
	<div class="cs_faq_article_bar">
		<div class="faq_list">
			<div style="">
			</div>
			<div class="faq_category">
				<form action="" name="frm_faqbook" method="post">
					<%
					String admin = (String)session.getAttribute("adminOk");
						if(admin != null) {
					 %>
					<input type="button" name="btnInsert" value="글쓰기" class="frm_faq_btns" id="cs_faq_insert"/>
					<%} %>
					<input type="hidden" name="findStr" value="">
					<input type="button" value="전체보기" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="주문결제" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="배송안내" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="주문취소" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="교환" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="환불" class="btnFaq" onclick="gofaq(this.value)">
					<input type="button" value="회원관련" class="btnFaq" onclick="gofaq(this.value)">
				</form>
			</div>
			<c:forEach var="vo" items="${list }">
			<ul class="cs_FAQ_item">
				<h4 class="cs_FAQ_title" id="cs_FAQ_title-first">
					<a href="#html5">
					<span>Q. ${vo.subject}</span>
					 <img alt="" src="<%=request.getContextPath() %>/images/arrow_bottom.png" id="cs_faq_change_img">
					</a>
				</h4>
				<div class="cs_FAQ_content">
					<p>${vo.doc}</p>
				</div>
			</ul>
			</c:forEach>
		</div>
	</div>
</div>
<script type="text/javascript">
var toggleMenu = function() {
	$(document).ready(function() {
		$(".cs_FAQ_title a").on('click', function() {
			
			var submenu = $(this).parent().next();
			
			if(submenu.is(":visible")) {
				$(this).css("color", "#000000");
				submenu.slideUp();
				$(this).children('img').attr("src", "<%=request.getContextPath() %>/images/arrow_bottom.png")
			}
			else {
				$(this).css("color", "rgb(91, 135, 164)");
				submenu.slideDown();
				$(this).children('img').attr("src", "<%=request.getContextPath() %>/images/arrow_top.png")
					
			}
		})
	});
}
toggleMenu();
</script>
</body>

</html>

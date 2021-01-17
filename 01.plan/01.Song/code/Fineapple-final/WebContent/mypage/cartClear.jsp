<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.table {
	margin: 0 auto;
	text-align: center;
}

.cart-box-title {
	font-size: 15px;
}

.cart-order-btn>#cart-btn {
	background-color: black;
	color: white;
	font-size: 15px;
}

.cart-btn-choose-product>#cart-btn {
	background-color: black;
	color: white;
	font-size: 18px;
	height: 30px;
	width: 130px;
}

.bottom-btn>#cart-btn {
	background-color: black;
	color: white;
	font-size: 18px;
	margin-right: 5px;
	font-size: 20px;
	height: 50px;
	width: 130px;
}

h4 {
	text-align: center;
}
</style>
<head>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/notice.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" type="text/css"
	href="https://vendor-cdn.imweb.me/css/site/site2.css?1608687536">
<script type="text/javascript">
funcfion fnPay(){
	alert("결제 API를 발급받으시기 바랍니다.");
}
function fnClear(){
	if(confirm("장바구니를 비우시겠습니까?")){
			location.href="cartClear.jsp"
		}
}
function fnGo(){
	location.href="../main/index.jsp";
}
</script>
</head>
<!-- header -->
<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
<jsp:include page="../main/header.jsp" />

<%} else {%>

<jsp:include page="../main/header.jsp" />

<%} %>
<header class="cs_func_page_header">
	<h1 style="font-size: 2em;">장바구니</h1>
	<div class="cs_category">
		<a href="../mypage/mypage.jsp">정보수정</a> <a href="../mypage/cart.jsp">장바구니</a>
		<a href="../mypage/orderlist.jsp">주문내역</a> <a
			href="../mypage/coupon.jsp">쿠폰함</a>
	</div>
</header>
<body class="cart_body" id="cart_body">


	<h4 style="padding: 30px 0px 30px 0px;"></h4>
	<!--장바구니 아이템 리스트 가져옴-->
	<div class="cart_list_wrap_holder">
		<table class="table no-margin shop-table">
			<colgroup>
				<col style="width: 40px">
				<col>
				<col style="width: 100px">
				<col style="width: 80px">
				<col style="width: 120px">
				<col style="width: 130px">
				<col style="width: 130px">
				<col style="width: 150px">
			</colgroup>
			<thead class="item-subject">
				<tr>
					<th>
						<div class="checkbox">
							<label> <input type="checkbox" value="" class="all_check">
								<span></span>
							</label>
						</div>
					</th>
					<th class="item-info"><span class="cart-box-title"
						style="width: 40px">item</span> <span class="hidden-lg hidden-md"></span></th>

					<th class="amount"><span class="cart-box-title">수량</span></th>
					<th class="deliv_price"><span class="cart-box-title">배송수단</span></th>
					<th class="deliv_price"><span class="cart-box-title">배송비</span></th>
					<th class="price"><span class="cart-box-title">가격</span></th>
					<th></th>
				</tr>
			</thead>
			<tbody>	
			</tbody>
			<tfoot>
			</tfoot>
		</table>
	</div>
	<div style="text-align:center;">
	<img src="https://mmaholic.co.kr/SG/img/cart_img_empty.gif"
						style="align:center" width="450" height="400" alt="cart item">
	</div>
	<!--END-->
	<div class="bottom-btn">
		<input type="button" id="cart-btn"
			onclick="location.href='../main/index.jsp' " style='cursor: pointer;'
			value="상품 보러가기">
	</div>

</body>
<!-- footer영역 -->
<%@include file="../main/footer.jsp"%>

</html>
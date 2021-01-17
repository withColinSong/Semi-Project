<%@page import="mypage.CartListVo"%>
<%@page import="mypage.CartDao"%>
<%@page import="product.ProductVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.text.DecimalFormat"%>
<%@page import="mypage.CartVo"%>
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>    
<%
request.setCharacterEncoding("utf-8");
ArrayList<CartVo> cart = null;

Object obj = session.getAttribute("cart");	//세션 객체에서 cart 값을 가져온다.

if(obj == null) {	//주문한 제품이 없으면 배열을 생성 
	cart = new ArrayList<CartVo>();	
} else {			//주문한 제품이 있으면 강제로 캐스팅 
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <script src='../js/pay.js'></script> -->
<style>
.table{
	margin : 0 auto;
	text-align :center;
}

.cart-box-title{
	font-size : 15px;
}
.orderlist-delivery-location-btn>#delivery-location-btn{
	background-color : black;
	color : white;
	font-size:15px;
}
.cart-order-btn>#cart-btn{
	background-color : black;
	color : white;
	font-size:15px;
}
.cart-btn-choose-product>#cart-btn{
	background-color : black;
	color : white;
	font-size:18px;
	height : 30px;
	width : 130px;
}
.cart-btn-choose-product>#delete-all-cart-btn{
	background-color : black;
	color : white;
	font-size:18px;
	height : 30px;
	width : 130px;
}
.bottom-btn>#cart-btn{
	background-color : black;
	color : white;
	font-size:18px;
	margin-right: 5px; 
	font-size : 20px;
	height : 50px;
	width : 130px;
	}

h4{
 text-align : center;
}

	
</style>
<head>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/notice.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" type="text/css"
	href="https://vendor-cdn.imweb.me/css/site/site2.css?1608687536">
<script src="../js/cart.js">
<script type="text/javascript">
/* funcfion fnPay(){
	alert("결제 API를 발급받으시기 바랍니다.");
}
function fnClear(){
	if(confirm("장바구니를 비우시겠습니까?")){
			location.href="cartClear.jsp"
		}
}
function fnGo(){
	location.href="../main/index.jsp";
} */
</script>
</head>
<!-- header -->
	<jsp:include page="../main/header.jsp"/>
	
	
	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">장바구니</h1>
		<div class="cs_category">
			<a href="../mypage/mypage.jsp">정보수정</a>
			<a href="../mypage/cart.jsp">장바구니</a>
			<a href="../mypage/orderlist.jsp">주문내역</a>
			<a href="../mypage/coupon.jsp">쿠폰함</a>
		</div>
	</header>
<body class="cart_body" id="cart_body">

 
       <h4 style="padding : 30px 0px 30px 0px;"> </h4>
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
					<th class="item-info"><span class="cart-box-title" style="width: 40px">item</span>
						<span class="hidden-lg hidden-md"></span></th>
					
					<th class="amount"><span class="cart-box-title">수량</span></th>
					<th class="deliv_price"><span class="cart-box-title">배송수단</span></th>
					<th class="deliv_price"><span class="cart-box-title">배송비</span></th>
					<th class="price"><span class="cart-box-title">가격</span></th>
					<th></th>
				</tr>
			</thead>
			
			<tbody>
			<%
			//해당 상품정보 받아오기
			CartDao dao = new CartDao();
			
			String member_id=(String)session.getAttribute("member_mid");
			
			List<CartListVo> cartList = dao.CartList(member_id);
			
			
			request.setAttribute("cartList", cartList);
			request.setAttribute("dao",dao);
			int total=0;
			
			
			%>
		
			<c:forEach var='vo' items="${cartList}">
			<tr class="content" style="overflow: visible;">


					<td class="slt">
						<div class="checkbox">
							<label> <input type="checkbox" class="_cartItemCheckbox"
								checked="checked"><span></span>
							</label>
						</div>
					</td>
					<td class="cart-item-img-td"><a
						class="cart-item-wrap" onclick="location.href='../product/phone1.jsp'">
							<div class="cart-item-img">
								<img
									src="${vo.getProduct_picture_url()}"
									width="70" height="70" alt="cart item">
							</div>

							<p class="cart-item-title" style="font-size: 18px; text-decoration : none; cursor : pointer; color : black;"
								id="shop_cart_title">${vo.getProduct_name() }</p>
					</a></td>
					<td class="amount-td">
						<div class="text-13 title text-center">
							<span class="cart-product-amount">${vo.getCart_amount() }개</span></em>
						</div>
						
						
					</td>
					<td class="cart-delivery-td">
							<div class="delivery-way">택배</div>
						</td>
					<td class="cart-delivery-price-td">
						<div class="cart-delivery-price">
							<div>
								<span>무료 배송</span>
							</div>

						</div></td>
	
					<td class="cart-product-price"><fmt:formatNumber value="${vo.getProduct_price()*vo.getCart_amount()}" pattern="#,###"></fmt:formatNumber>원</td>
					<td class="orderlist-delivery-location-btn">
					<input type="button" id="delivery-location-btn"  style='cursor:pointer;' value="삭제" onclick="funcdelete(${vo.getProduct_serial()})">
				</tr>
				<c:set var ="sum" value="${sum+vo.getProduct_price()*vo.getCart_amount()}"></c:set>
		</c:forEach>
		<form method="get" name="form" id="cartform">
			<input type="hidden" name="product_s" value="">
			<input type="hidden" name="product_price" value="">
		</form>
		
				
			</tbody>

			<tfoot>
				<tr>
					<td class="cart-btn-choose-product" colspan="4">
					<input type="button" id="delete-all-cart-btn" onclick="funcdeleteAllCart()" style='cursor:pointer;' value="전체 상품 삭제">
					<input type="button" id="cart-btn" onclick="location.href='../main/index.jsp' " style='cursor:pointer;' value="다른 상품 보기"></td>
					<td class="amount txt"><span style="font-size:18px;">결제금액</span></td>
					<td class="amount text-brand"><span
						style="font-size: 18px; font-weight: 600;"
						id="cart_main_total_price"><fmt:formatNumber value="${sum}" pattern="#,###"></fmt:formatNumber>원</span></td>
					<td></td>
				</tr>
			</tfoot>
		</table>

			
	</div>
	<!--END-->
	<div class="bottom-btn">
		<input type="button" id="cart-btn" onclick="location.href='../purchase/purchase.do' " style='cursor:pointer;'value="결제하기"> 
	</div>
	<script type="text/javascript">
	function funcdelete(serial){
		var frm = document.form;
		frm.product_s.value = serial;
		frm.action="deletecart.jsp";
		frm.submit();
		}
	function funcdeleteAllCart(){
		var frm = document.form;
		frm.action="deleteAllCart.jsp";
		frm.submit();
		}
	function funcSumCart(price){
		var frm = document.form;
		frm.product_price.value=price;
		}
	</script>
	</body>
	 <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
   	
</html>
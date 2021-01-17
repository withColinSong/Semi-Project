<%@page import="mypage.CartDao"%>
<%@page import="mypage.CartListVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	text-decoration:none;
}
.cart-btn-choose-product>#cart-btn{
	background-color : black;
	color : white;
	font-size:18px;
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
	width : 200px;
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


</head>
<body class="cart_body" id="cart_body">
	<!-- header -->
	<jsp:include page="/main/header.jsp"/>

	
	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">주문내역</h1>
		<div class="cs_category">
			<a href="../mypage/mypage.jsp">정보수정</a>
			<a href="../mypage/cart.jsp">장바구니</a>
			<a href="../mypage/orderlist.jsp">주문내역</a>
			<a href="../mypage/coupon.jsp">쿠폰함</a>
		</div>
	</header>
       
	<h4 style="padding : 30px 0px 30px 0px;"> </h4>
	<!--장바구니 아이템 리스트 가져옴-->
	<div class="cart_list_wrap holder">
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
					<th class="item-info"><span class="cart-box-title">item</span>
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
			CartDao dao = new CartDao();
			
			String member_id=(String)session.getAttribute("member_mid");
			
			List<CartListVo> orderList = dao.OrderList(member_id);
			
			
			request.setAttribute("orderList", orderList);
			request.setAttribute("dao",dao);
			int total=0;
			
			%>
			<c:forEach var='vo' items="${orderList}">
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
					<input type="button" id="delivery-location-btn" onclick="location.href='../Tracking/index.jsp' " style='cursor:pointer;' value="배송지 정보">
					<c:set var ="sum" value="${sum+vo.getProduct_price()*vo.getCart_amount()}"></c:set>
				</tr>
				</c:forEach>
					<form method="get" name="form" id="cartform">
			<input type="hidden" name="product_s" value="">
			<input type="hidden" name="product_price" value="">
		</form>
			</tbody>

			<tfoot>
				<tr>
					<td class="cart-btn-choose-product" colspan="4">
				
					<input type="button" id="delete-all-cart-btn" onclick="funcdeleteAllOrderlist()" style='cursor:pointer;' value="전체 상품 취소">
				
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
		<input type="button" id="cart-btn" onclick="location.href='../main/index.jsp' " style='cursor:pointer;'value="계속 쇼핑하기"> 
	</div>
	<script type="text/javascript">
	function funcdeleteAllOrderlist(){
		var frm = document.form;
		frm.action="deleteAllOrderlist.jsp";
		frm.submit();
		}
	</script>
	 <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
   	
</body>
</html>
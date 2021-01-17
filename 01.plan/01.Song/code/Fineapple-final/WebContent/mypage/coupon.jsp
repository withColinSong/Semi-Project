<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.cart-order-btn>#cart-btn{
	background-color : black;
	color : white;
	font-size:15px;
}
.cart-btn-choose-product>#cart-btn{
	background-color : black;
	color : white;
	font-size:18px;
}
.bottom-btn>#cart-btn{
	background-color : black;
	color : white;
	font-size:18px;
	margin-right: 5px; 
	font-size : 20px;
	height : 50px;
	width : 120px;
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
<!-- header -->
	<jsp:include page="/main/header.jsp"/>

<body class="cart_body" id="cart_body">

	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">쿠폰함</h1>
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
				<col style="width: 60px">
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
					<th class="deliv_price"><span class="cart-box-title">할인 가격</span></th>
					<th class="price"><span class="cart-box-title">가격</span></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr class="content" style="overflow: visible;">
					<td class="slt">
						<div class="checkbox">
							<label> <input type="checkbox" class="_cartItemCheckbox"
								checked="checked"><span></span>
							</label>
						</div>
					</td>
					<td class="cart-item-img-td"><a
						class="cart-item-wrap" href="/nail/?idx=151">
							<div class="cart-item-img">
								<img
									src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-family-hero?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604021663000"
									width="70" height="70" alt="cart item">
							</div>

							<p class="cart-item-title" style="font-size: 18px; text-decoration : none; cursor : pointer; color : black;"
								id="shop_cart_title">iPhone 12 Pro 할인쿠폰</p>
					</a></td>
					<td class="amount-td">
						<div class="text-13 title text-center">
							<span class="cart-product-amount">1개</span></em>
						</div>
						
						<div class="text-center">
							<span class="cart-btn-tools"> <a href="javascript:;"
								class="cart-btn-tools">변경</a>
								<!-- 아래 옵션 변경과 같은 기능. 모바일에선 해당 버튼은 사라지고 아래 옵션 변경 버튼이 노출-->
							</span>
						</div>
					</td>
					<td class="cart-delivery-td">
							<div class="delivery-way">택배</div>
						</td>
					<td class="cart-delivery-price-td">
						<div class="cart-delivery-price">
							<div>
								<span>150,000원</span>
							</div>

						</div></td>
					<td class="cart-product-price">1,350,000원</td>
					<td class="cart-order-btn">
					<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="적용">
					<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="삭제"></td>
				</tr>
				
				
				<tr class="content" style="overflow: visible;">
					<td class="slt">
						<div class="checkbox">
							<label> <input type="checkbox" class="_cartItemCheckbox"
								checked="checked"><span></span>
							</label>
						</div>
					</td>
					<td class="cart-item-img-td"><a
						class="cart-item-wrap" href="/nail/?idx=151">
							<div class="cart-item-img">
								<img
									src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-12-family-select-2020?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604343709000"
									width="70" height="70" alt="cart item">
							</div>

							<p class="cart-item-title" style="font-size: 18px; text-decoration : none; cursor : pointer; color : black;"
								id="shop_cart_title">iPhone 12 할인쿠폰</p>
					</a></td>
					<td class="amount-td">
						<div class="text-13 title text-center">
							<span class="cart-product-amount">1개</span></em>
						</div>
						
						<div class="text-center">
							<span class="cart-btn-tools"> <a href="javascript:;"
								class="cart-btn-tools">변경</a>
								<!-- 아래 옵션 변경과 같은 기능. 모바일에선 해당 버튼은 사라지고 아래 옵션 변경 버튼이 노출-->
							</span>
						</div>
					</td>
					<td class="cart-delivery-td">
							<div class="delivery-way">택배</div>
						</td>
					<td class="cart-delivery-price-td">
						<div class="cart-delivery-price">
							<div>
								<span>0원</span>
							</div>

						</div></td>
					<td class="cart-product-price">950,000원</td>
					<td class="cart-order-btn">
					<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="적용">
					<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="삭제"></td>
				</tr>
				
				
				<tr class="content" style="overflow: visible;">
					<td class="slt">
						<div class="checkbox">
							<label> <input type="checkbox" class="_cartItemCheckbox"
								checked="checked"><span></span>
							</label>
						</div>
					</td>
					<td class="cart-item-img-td"><a
						class="cart-item-wrap" href="/nail/?idx=151">
							<div class="cart-item-img">
								<img
									src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone11-select-2019-family?wid=441&amp;hei=529&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1567022175704"
									width="70" height="70" alt="cart item">
							</div>

							<p class="cart-item-title" style="font-size: 18px; text-decoration : none; cursor : pointer; color : black;"
								id="shop_cart_title">iPhone 11 할인쿠폰</p>
					</a></td>
					<td class="amount-td">
						<div class="text-13 title text-center">
							<span class="cart-product-amount">1개</span></em>
						</div>
						
						<div class="text-center">
							<span class="cart-btn-tools"> <a href="javascript:;"
								class="cart-btn-tools">변경</a>
								<!-- 아래 옵션 변경과 같은 기능. 모바일에선 해당 버튼은 사라지고 아래 옵션 변경 버튼이 노출-->
							</span>
						</div>
					</td>
					<td class="cart-delivery-td">
							<div class="delivery-way">택배</div>
						</td>
					<td class="cart-delivery-price-td">
						<div class="cart-delivery-price">
							<div>
								<span>0원</span>
							</div>

						</div></td>
					<td class="cart-product-price">850,000원</td>
					<td class="cart-order-btn">
					<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="적용">
					<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="삭제"></td>
				</tr>
				
		
				<tr class="payment-info">
					<td colspan="4"></td>
					<td class="pay-txt">
						<p style="font-size:17px;">상품가격</p>
						<p style="font-size:17px;">할인가격</p>

					</td>
					<td class="pay-number">

						<p class="cart-final-product-price">
							<span class="opacity-0" style="font-size:17px;">3,150,000원</span>
						</p>
						<p class="cart-final-delivery-price">
							<span class="opacity-0" style="font-size:17px;">150,000원</span>
						</p>
					</td>
					<td></td>
				</tr>
			</tbody>

			<tfoot>
				<tr>
					<td class="cart-btn-choose-product" colspan="4">
					<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="선택쿠폰 삭제">
					<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="쿠폰 적용하기"></td>
					<td class="amount txt"><span style="font-size:18px;">결제금액</span></td>
					<td class="amount text-brand"><span
						style="font-size: 20px; font-weight: 600;"
						id="cart_main_total_price">3,000,000원</span></td>
					<td></td>
				</tr>
			</tfoot>
		</table>


	</div>
	<!--END-->
	<div class="bottom-btn">
		<input type="button" id="cart-btn" onclick="location.href='.jsp' " style='cursor:pointer;' value="주문하기"> 
	</div>
	
	 <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
   	
</body>
</html>
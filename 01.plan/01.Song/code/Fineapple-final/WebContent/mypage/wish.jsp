<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/UsersJoin/UsersJoin.css">
<link rel="stylesheet" href="../css/indexstyle.css">


<style>

</style>

</head>
<body class="wish_body" id="wish_body">
<!-- header -->
	<jsp:include page="/main/header.jsp"/>

	<ul class="menu">
       			<li><a href="../mypage/mypage.jsp">정보수정</a></li>
                <li><a href="../mypage/cart.jsp">장바구니</a></li>
                <li><a href="../mypage/orderlist.jsp">주문내역</a></li>
                <li><a href="../mypage/wish.jsp">찜 목록</a></li>
                <li><a href="../mypage/coupon.jsp">쿠폰함</a></li>
                
       </ul>
    
    <div class="wishlist-body"> 
	<div class="wishlist_title">
		<h4>찜하기</h4>
	</div>

	<div class="shop-item">
		<!-- 반복구간 시작 -->
		<div class="wish_thumb">
			<a href="/makeup/?idx=167"> 
			<img class="_org_img" 
			src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone11-black-select-2019?wid=470&hei=556&fmt=png-alpha&.v=1566956144418"
			style="width: 200px; height: 300px;">
				 <span class="bg_hover"></span>
			</a> <a href="javascript:;" class="circle btl bt-times-circle"
				onclick="SITE_SHOP_MYPAGE.deleteProdWish('s2020123001ea68a9e24b5')"></a>
		</div>
		<div class="item-detail">
			<div class="no-margin item-pay">
				<div class="item-title">
					<a href="/makeup/?idx=167">iPhone 11</a>
				</div>
				<div class="item-pay-detail">
					<p class="pay no-margin">850,000원</p>
				</div>
			</div>
		</div>
	</div>
	<!-- 반복구간 끝 -->
	<div class="shop-item">
		<!-- 반복구간 시작 -->
		<div class="wish_thumb">
			<a href="/skin-care/?idx=156"> 
			<img class="_org_img"
				src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-12-pro-family-hero?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604021663000"
				style="width: 200px; height: 300px;">
				 <span class="bg_hover"></span>
			</a> 
		</div>
		<div class="item-detail">
			<div class="no-margin item-pay">
				<div class="item-title">
					<a href="/skin-care/?idx=156">iPhone 12 Pro</a>
				</div>
				<div class="item-pay-detail">
					<p class="pay no-margin">1,350,000원</p>
				</div>
			</div>
		</div>
	</div>
	<!-- 반복구간 끝 -->
	<div class="shop-item">
		<!-- 반복구간 시작 -->
		<div class="wish_thumb">
			<a href="/nail/?idx=151"> 
			<img class="_org_img"
				src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-12-family-select-2020?wid=470&amp;hei=556&amp;fmt=jpeg&amp;qlt=95&amp;op_usm=0.5,0.5&amp;.v=1604343709000"
				style="width: 200px; height: 300px;">
				 <span class="bg_hover"></span>
			</a> <a href="javascript:;" class="circle btl bt-times-circle"
				onclick="SITE_SHOP_MYPAGE.deleteProdWish('s2020123014d4a6c522477')"></a>
		</div>
		<div class="item-detail">
			<div class="no-margin item-pay">
				<div class="item-title">
					<a href="/nail/?idx=151">iPhone 12</a>
				</div>
				<div class="item-pay-detail">
					<p class="pay no-margin">10,000,000원</p>
				</div>
			</div>

		</div>
	</div>
	</div>
	 <div class="bottom-btn">
		<input type="button" id="cart-btn" value="주문하기"> 
	</div>

	<!-- 반복구간 끝 -->
	
	 <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
</body>
</html>
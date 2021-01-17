<%@page import="product.ProductListServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<script src="https://code.jquery.com/jquery-3.5.1.js" 
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous"></script>
<script src='../js/login.js'></script>
<script src='../js/indexProduct.js'></script>
<script src='../js/Productlist.js'></script>
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">

		
</head>

<body>

	<!-- header영역 -->

	<jsp:include page="./header.jsp"/>
	
<!-- 팝업 -->

<jsp:include page="../popup/popup.jsp"/>
	
<!-- 메인 이미지 -->	
    <div class = "container">
       <div class="main-view">
          <ul>
            <li><img src="../images/macbook.jpg " width="100%" /></li>
            <li><img src="../images/ipad.jpg"width="100%"/></li>
            <li><img src="../images/phone.jpg"width="100%"/></li>
          </ul>
        </div>
 
        
<!-- 메인 문구 -->       
        <div class="cater3-movingBG">
			<div class="flyinTxtCont">
				<div class="flyIn lineOne">FineApple</div>
				<div class="flyIn lineTwo">makes </div>/		
				<div class="flyIn lineThree">Innovation</div>
				<div class="flyIn lineFour"></div>
			</div>
		</div>

<!-- 상품 카테고리 -->		
            <ul class="menu">
                <li><a href="javascript:phone();">휴대폰</a></li>
                <li><a href="javascript:laptop();">노트북</a></li>
                <li><a href="javascript:tablet()">태블릿PC</a></li>
                <li><a href="javascript:watch()">스마트워치</a></li>
                <li><a href="javascript:accessory()">악세서리</a></li>
             </ul>
		
		
<!-- 상품정렬 -->
		
	<div class = "product_middle">	
		<div id = "product_total">
			<p>Total&nbsp:&nbsp&nbsp<span>12</span></p>
		</div>
		
		<div id="product_order_list">
			<p>
			<a href="javascript:recentlist();">최신순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
			<a href="javascript:pricelist();">낮은가격</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
			<a href="javascript:pricelistdesc();">높은가격</a> </p>
		</div>
	</div>
		
<!-- 상품 목록 -->
		<div id = "product_list">
	<jsp:include page="../product_index/phone.jsp"/>
		</div>


<div id = "chat">
	<a href="../login/chat.jsp"><img src="../images/chat.png" /></a>
</div>
   <!-- footer영역 -->
   	<%@include file="footer.jsp" %>
</div>
<script>
logInOut();
</script>

</body>
</html>
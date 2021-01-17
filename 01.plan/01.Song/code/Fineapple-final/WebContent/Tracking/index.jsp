<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송조회</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/tracking/tracking.css">
<link rel="stylesheet" href="../css/indexstyle.css">

</head>
<body class="body">
<!-- header영역 -->
		<jsp:include page="../main/header.jsp"/>

	
	<div class=trk-header>
		<h1>주문/배송조회</h1>
	</div>
	<hr class="trk-hr">
	
	<div class=trk-container>
		
		<section>
			<div class="trk-header-align">
				<img src="../images/traking/rocket.png">
				<h1>배송정보</h1>
			</div>
			<div class="trk-table-align">
				<table class="trk-table">
				<tr>
	
					<th>택배사</th>
					<td>우체국택배(1588-1350)</td>
					<th>운송장번호</th>
					<td>01012341234</td>
	
				</tr>
				<tr>
					<th>보내는 분</th>
					<td>송연주</td>
					<th>받는 분</th>
					<td>송연주</td>
				</tr>
				</table>
				
				
			</div>
		
		</section>
		<section>
			<div class="trk-header-align">
				<img src="../images/traking/rocket.png">
				<h1>배송진행상황</h1>
			</div>
			<div class="trk-align-rocket-container">
				<div class="trk-aligin-rocket">
					<h1>상품접수</h1>
					<img src="../images/traking/human.png">
				</div>

				<div id="trk-rocket" class="trk-aligin-rocket trk-color">
					<h1 style="opacity: 0.3;">배송중</h1>
					<img src="../images/traking/makefg.png"  style="opacity: 0.3;">
				</div>

				<div id="trk-rocket-two" class="trk-aligin-rocket trk-color">
					<h1 style="opacity: 0.3;">배송완료</h1>
					<img src="../images/traking/rocket_ok.png" style="opacity: 0.3;">
				</div>
			</div>
		</section>

		<section>
			<div class="trk-header-align">
				<img src="../images/traking/rocket.png">
				<h1>배송현황</h1>
			</div>
			<div class="trk-table-align">
				<table class="trk-table">
				<tr>
					<th>날짜</th>
					<th>시간</th>
					<th>현재위치</th>
					<th>담당자/연락처</th>
					<th colspan="2">처리현황</th>
				</tr>
				<tr>
					<td>2020.12.31</td>
					<td>18:00</td>
					<td> 서울특별시 영등포구 선유동2로 57 이레빌딩 (구관) 19F, 20F</td>
					<td>송연주/010-1234-4567</td>
					<td>준비중</td>					
				</tr>
				<tr>
					<td>2020.12.31</td>
					<td>18:00</td>
					<td> 서울특별시 영등포구 선유동2로 57 이레빌딩 (구관) 19F, 20F</td>
					<td>송연주/010-1234-4567</td>
					<td>준비중</td>					
				</tr>
				</table>
				
				
			</div>
		
		</section>
		
	
	</div>
	<hr class="trk-hr">
	
		<section>
			<div class="trk-header-align-btn">
				<form action="../mypage/orderlist.jsp" method="post">
					<input type="submit" name="trk-submit" value="마이페이지로 이동"/>
				</form>
			</div>
		</section>
	<footer>
		<jsp:include page="/main/footer.jsp"></jsp:include>
	</footer>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/intro.css">
	<link rel="stylesheet" type="text/css" href="../css/header.css">
		<link rel="stylesheet" type="text/css" href="../css/footer.css">
	<link rel='stylesheet' type='text/css' href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
	<script src="https://code.jquery.com/jquery-3.5.1.js" 
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
        crossorigin="anonymous"></script>
    <title>About_Us</title>
</head>
<body>
	<!-- header영역 -->
	
	<jsp:include page="../main/header.jsp"/>
	

<!-- main -->
    <div class="main">
        <div class="main-content">
            <h2>"가격의 새로운 혁신."</h2>
            <h6>With FineApple.</h6>
        </div>
        <div class="main-cover"></div>
    </div>

<!-- CEO -->
    <div class="ceo">
        <div class="ceo-content">
            <h6>인사말.</h6><br/><br/>
            <h4>‘비슷한 품질’과 ‘저렴한 가격’으로</br> 더 나은 미래를 꿈꿉니다.</h4><br/>
            <div class="hideme">FineApple을 방문해주신 여러분 반갑습니다. </div>
            <div class="hideme">FineApple은 새롭게 출시한 전자제품회사로,</div>
            <div class="hideme">고객 중심을 최우선의 가치로 두고 있으며</div>
            <div class="hideme">혁신적인 제품과 서비스를 주도할 것입니다!</div>
            <div class="hideme">비슷한 품질에 가격경쟁력을 확보하여 </div>
            <div class="hideme">고객님의 크나큰 만족을 위해 </div>
            <div class="hideme">최선의 노력을 다 하겠습니다.</div>
            <div class="hideme">감사합니다.</div><br>
            <div class="hideme"><b>FineApple 일동</b></div>
        </div>
    </div>

<!-- HISTORY -->
    <div class="history"> 
        <h1>HISTORY. </h1><br/>
        <div class="history-content">

            <div class="history-date">
                <div class="여백1"></div>
                <span class="date">2020.12.25</span>
                <p class="work">'FineApple'<br> 오픈</p><br><br>
                <span class="date">2020.12.11</span>
                <p class="work">'FineApple'<br> 세 번째 회의</p><br><br><br>
                <span class="date">2020.12.04</span>
                <p class="work">'FineApple'<br> 사명 결정</p><br><br><br>
                <span class="date">2020.12.01</span>
                <p class="work">멤버 모집</p><br>
                <img src="../images/화살표.png" alt="history" class="arrow">
                <div class="여백2"></div><br>
                <span class="date">2020.12.18</span>
                <p class="work">'FineApple'<br> 네 번째 회의</p><br><br><br>
                <span class="date">2020.12.08</span>
                <p class="work">'FineApple'<br> 두 번째 회의</p><br><br><br>
                <span class="date">2020.12.02</span>
                <p class="work">멤버 결정<br> 첫 회의</p><br><br><br>
                <span class="date">2020.11.30</span>
                <p class="work">회사 설립 구상</p><br>
            </div>
        </div>
    </div>
    
<!-- 
    <div class="vision">
        <div class="vision-content">
            <h1>VISION.</h1><br/>
        </div>
        <ul>
            <li class="vision-info">도전/혁신 <i class="fas fa-walking"></i>
            	<p>임직원 모두가 항상 도전하며 새로운 혁신을 주도하기 위해 노력하고 또 노력합니다.</p>
            </li>
            <li class="vision-info">주인정신 <i class="fas fa-child"></i>
            	<p>자부심과 실력을 갖춘 당당하고 단단한 FineApple의 주인으로서 생각하고 행동합니다.</p>
            </li>
            <li class="vision-info">고객중심 <i class="fas fa-headset"></i>
            	<p>고객發 자기혁신을 통해 고객이 원하는 것을 민첩하고 유연하게 제공합니다</p>
            </li>
            <li class="vision-info">소통/협업 <i class="fas fa-comments"></i>
           		<p>조직의 벽을 넘어서는 수평적인 소통과 유연한 협업 체계를 강화합니다.</p>
            </li>
        </ul>
    </div>
 -->
<!-- CI -->
    <div class="ci">
        <div class="ci-content">
            <h1>CI.</h1><br/>
        </div>
        <img src="../images/CI.png" alt="ci" class="ci-img"><br/><br/>
        <p>FineApple의 심볼은<br/>
            <span>'아무리 비슷한 제품이라도<br/>
            가격적인 혁신 만큼은<br/>
            쭉 뻗은 파인애플의 꼭지처럼<br/>
            최고 위치로 올라가겠다'</span><br/>
            를 의미합니다.<br/>
        </p>
    </div>
    
   <!-- footer영역 -->
   <%@include file="../main/footer.jsp" %>
</body>
</html>

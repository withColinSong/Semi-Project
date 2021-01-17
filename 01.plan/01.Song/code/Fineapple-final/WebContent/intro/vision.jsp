<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/vision.css">
	<link rel="stylesheet" type="text/css" href="../css/header.css">
	<link rel="stylesheet" type="text/css" href="../css/footer.css">
	<link rel='stylesheet' type='text/css' href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
	<script src="https://code.jquery.com/jquery-3.5.1.js" 
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
        crossorigin="anonymous"></script>
    <title>Vision</title>
</head>
<body>
	<!-- header영역 -->
	<jsp:include page="../main/header.jsp"/>

<!-- VISION  -->
<div class="vision">
	<div class="vision-content">
    	<h1>VISION.</h1>
    </div>
	<div class="vision-cover"></div>    
    </div>
    <div class="vision2">
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



   <!-- footer영역 -->
   <%@include file="../main/footer.jsp" %>
</body>
</html>
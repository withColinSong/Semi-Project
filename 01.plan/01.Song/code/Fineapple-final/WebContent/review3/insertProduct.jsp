<%@page import="java.util.ArrayList"%>
<%@page import="mypage.CartListVo"%>
<%@page import="java.util.List"%>
<%@page import="mypage.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js" 
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous"></script>
</head>
<body>
<div style="display: none;">
<jsp:include page="../main/header.jsp"/>
</div>
<%
//해당 상품정보 받아오기
List<CartListVo> list = new ArrayList<CartListVo>();
CartDao dao = new CartDao();
String member_id=(String)session.getAttribute("member_mid");

list = dao.OrderList(member_id);
request.setAttribute("list", list);
%>

 <form name="frm_rp">
<c:set var="i" value="0"></c:set>
<c:forEach var='list' items="${list}">
 <input type="radio" name="product_name_list" value="${list.product_serial}" id="${list.product_name}"><label>${list.product_name}</label>
 <br/>
 <c:set var="i" value="${i+1}"></c:set>
</c:forEach>

<br/>
<br/>
<input type="button" value="선택하기" id="btnProductSelect">
 </form>	

<script>
var btnProductSelect = document.getElementById('btnProductSelect');
btnProductSelect.onclick = function(){
   var productSerial = $("input:radio[name='product_name_list']:checked").val( ) ;
   var productName = $("input:radio[name='product_name_list']:checked").attr("id"); 
   var radioIdx = $(":radio[name='product_name_list']").index($(":radio[name='product_name_list']:checked"));
   
/* 	
   var pwd = document.getElementById('pwd').value;
   opener.document.frm_member.pwd.value = pwd; */
   opener.document.frm_review.productSerial.value = productSerial;
   opener.document.frm_review.productName.value = productName;
   self.close();
}
</script>
</body>
</html>
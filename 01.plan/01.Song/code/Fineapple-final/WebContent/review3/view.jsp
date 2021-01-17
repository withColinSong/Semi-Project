<%@page import="review.ReviewDao"%>
<%@page import="review.ReviewVo"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html> 
    <meta charset="UTF-8">
<head>
<title>FineApple Review</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/review4.css"> 
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
<script src='<%=request.getContextPath() %>/js/review.js'></script>
</head>

<body>
<div class="review">
	<!-- header영역 -->
		<jsp:include page="../main/header.jsp"/>

	
	<h3>리뷰게시판</h3>
 	<div class="container">
 		<div class="row">
 		<form method="post" name="frm_review">
	 			<table class="review-table-detail" style="text-align: center;"> 
	 				<tbody>
	 					<tr>
	 						<td class="table-left">제목</td>
	 						<td class="table-right" colspan="2"><input type="text" name="reivewTitle" disabled="disabled" value="${vo.reviewTitle }"></td>
	 						
	 					<%-- 	<td class="table-right" colspan="2"><%= rv.getReviewTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td> --%>
	 					</tr>
	 					<tr>
	 						<td class="table-left">상품명</td>
	 						<td class="table-right" colspan="2"><input type="text" name="memberId" disabled="disabled" value="${vo.productName }"></td>
	 						<%-- <td class="table-right" colspan="2"><%= rv.getMemberId() %></td> --%>
	 					</tr>
	 					<tr>
	 						<td class="table-left">작성자</td>
	 						<td class="table-right" colspan="2"><input type="text" name="memberId" disabled="disabled" value="${vo.memberId }"></td>
	 						<%-- <td class="table-right" colspan="2"><%= rv.getMemberId() %></td> --%>
	 					</tr>
	 					<tr>
	 						<td class="table-left">작성일자</td>
	 						<td class="table-right" colspan="2"><input type="text" name="reviewDate" disabled="disabled" value="${vo.reviewDate }"></td>
	 						<%-- <td class="table-right" colspan="2"><%= rv.getReviewDate()%></td> --%>
	 					</tr>
	 					<tr>
	 						<td class="table-left">사진</td>
	 						<td  class="table-right" colspan="2">
	 						<a href='review3/upload/${vo.reviewImg}' download = '${vo.reviewImg }'>
										<img src='review3/upload/${vo.reviewImg}' width='200px' height='140px'/>
									</a>
						<%-- 	<c:choose>
								<c:when test="${empty vo.reviewImg }">
									<img src='http://placehold.it/200X140' width='200px' height='140px' />
								</c:when>
								<c:otherwise>
									<a href='<%=request.getContextPath() %>/review3/upload/${vo.reviewImg }' download = '${vo.reviewImg }'>
										<img src='<%=request.getContextPath() %>/review3/upload/${vo.reviewImg }' width='200px' height='140px'/>
									</a>
								</c:otherwise>				
							</c:choose>	 --%>
							</td>	
						<hr/>
						</tr>
	 					<tr>
	 						<td class="table-right" id="table-doc" colspan="2"><textarea name="reivewDoc" disabled="disabled" style="height: 350px; width: 100%;" >${vo.reviewDoc }</textarea></td>
	 						<%-- <td class="table-right" id="table-doc" colspan="2"><%= rv.getReviewDoc().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>")%></td> --%>
	 					</tr>
	 					
	 				</tbody>
	 			</table>
	 			
	 			<!-- buttons -->
	<div class = 'btns'>
		<input type="hidden" name="reviewSerial" value="${vo.reviewSerial }">
		<input type='button' value='수정' id='btnModify' />
		<input type='button' value='삭제' id='btnDelete' />
		<input type='button' value='목록으로' id='btnSelect2' />
		<input type='hidden' name='findStr' value='${param.findStr }'/>
		<input type='hidden' name='nowPage' value='${param.nowPage }'/>
		<input type='hidden' name='delFile' value='${vo.reviewImg }' />
	</div>
 			</form> 
 		</div>
 	</div>
 
 

       
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
</div>
<script type="text/javascript">
review()
</script>
</body>
</html>
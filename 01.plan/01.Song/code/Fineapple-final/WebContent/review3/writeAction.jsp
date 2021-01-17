<%-- <%@page import="review.ReviewDao3"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>    
<jsp:useBean id="review" class="review.ReviewVo" scope="page" />
<jsp:setProperty name="review" property="reviewTitle" />
<jsp:setProperty name="review" property="reviewDoc" />
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(review.getReviewTitle() == null || review.getReviewDoc() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	} else {
		ReviewDao3 rv = new ReviewDao3();
		int result = rv.write(review.getReviewTitle(), review.getMemberId(), review.getReviewDoc());
		if(result == -1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('글쓰기에 실패했습니다.')");
	script.println("history.back()");
	script.println("</script>");
		} else {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('글쓰기가 완료되었습니다.')");
	script.println("location.href = 'review.jsp'");
	script.println("</script>");
		}
		
	}
%>
</body>
</html> --%>
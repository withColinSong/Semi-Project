<%-- <%@page import="review.ReviewVo"%>
<%@page import="review.ReviewDao3"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int reviewSerial = 0;
	if (request.getParameter("reviewSerial") != null){
		reviewSerial = Integer.parseInt(request.getParameter("reviewSerial"));
		}
	if (reviewSerial == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 게시물입니다.')");
		script.println("location.href = 'review.jsp'");
		script.println("</script>");
	}
	ReviewVo rv = new ReviewDao3().getReview(reviewSerial);
	
		ReviewDao3 dao = new ReviewDao3();
		int result = dao.delete(reviewSerial);
		if(result == -1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('글 삭제에 실패했습니다.')");
	script.println("history.back()");
	script.println("</script>");
		} else {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('글 삭제가 완료되었습니다.')");
	script.println("location.href = 'review.jsp'");
	script.println("</script>");
		}
%>
</body>
</html> --%>
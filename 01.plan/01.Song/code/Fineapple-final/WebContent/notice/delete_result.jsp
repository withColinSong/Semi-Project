<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "dao" class = "notice.NoticeDao"/>
<jsp:useBean id = "vo" class = "notice.NoticeVo" />
<jsp:setProperty property="*" name="vo"/>

<%
	String msg = dao.delete(vo);
	request.setAttribute("msg", msg);
	
%>
<script>
	alert('${msg}');
	location.href = '../notice/notice.jsp';
</script>



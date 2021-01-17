<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	session.removeAttribute("member_mid");
	session.removeAttribute("adminOk"); 

	response.sendRedirect("../main/index.jsp");
%>
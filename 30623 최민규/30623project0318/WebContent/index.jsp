<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String section = Util.getParamNN(request.getParameter("section"));
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="AIcss.css">
<meta charset="UTF-8">
<title>GET 실습</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	
	<%= section %>
	
	<% switch(section){
	case "응용" : %>
	<jsp:include page="subpage2.jsp"></jsp:include>
	<% break;
	case "머신":%>
	<jsp:include page="subpage.jsp"></jsp:include>
	<% break; 
	   default: break; }%>
	
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
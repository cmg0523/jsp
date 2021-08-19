<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
   <jsp:include page = "header.jsp"></jsp:include>
<% 
request.setCharacterEncoding("UTF-8");
String sect = request.getParameter("sec");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>GET 실습</title>
</head>
<body>


<section><%=sect %>	</section>	


</body>
</html>
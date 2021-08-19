<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
</head>
<body>
	<header> 제목 </header>
	<nav>
		<ul>
			<li><a href="insert.jsp">입력</a></li>
			<li><a href="select.jsp">조회</a></li>
		</ul> 
	</nav>
<section>
<% 
request.setCharacterEncoding("UTF-8");
Connection conn = null;
Statement stmt = null;
conn = Util.getConnection();
stmt = conn.createStatement(); 
String sql = "Select * FROM test";
ResultSet rs = stmt.executeQuery(sql);
%>
	<h2>조회</h2>
	<table border="1">
		<tr><td>ID</td></tr>
		
		<%  while(rs.next()){%>
	<tr><td><%=rs.getInt("id") %></td></tr>
		<% } %>
		
	</table>
</section>
<footer>copyright &copy;</footer>
</body>
</html>
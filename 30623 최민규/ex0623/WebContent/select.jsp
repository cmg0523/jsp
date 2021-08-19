<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>test</title>
<link rel="stylesheet" href="css.css">
</head>
<body>
	<header><h1>학생 조회 프로그램</h1></header>
	<nav>
		<ul>
			<li><a href="select.jsp">학생 조회</a></li>
			<li><a href="inesrt.jsp">학생 입력</a></li>
		</ul>
	</nav>
	<section>
	<% 
		request.setCharacterEncoding("UTF-8");
		Connection conn = null;
		Statement stmt = null;
		conn = Util.getConnection();
		stmt = conn.createStatement();
		String sql = "select * from stud";
		ResultSet rs = stmt.executeQuery(sql);
	%>
	<% 
	%>
		<table border="1">
			<tr>
				<td>학년</td>
				<td>반</td>
				<td>이름</td>
			</tr>
			<%while(rs.next()){ %>
			<tr>
				<td><%=rs.getInt("year") %></td>
				<td><%=rs.getInt("class") %></td>
				<td><%=rs.getString("name") %></td>
			</tr>
			<%} %>
		</table>
	</section>
	<footer>Copyright &copy; 2021 All rights reserved. Semyeong Computer High School</footer>
</body>
</html>
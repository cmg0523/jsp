<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%
request.setCharacterEncoding("UTF-8");

String id = Util.getParamNN(request.getParameter("id"));

Connection conn = null;
Statement stmt = null;
conn = Util.getConnection();
stmt = conn.createStatement();
String sql = "select * from tbl_review_01 where id = "+id;
ResultSet rs = stmt.executeQuery(sql);

Statement stmt2 = null;
stmt2 = conn.createStatement();
String sql2 = "select * from tbl_book_01 where id = "+id;
ResultSet rs2 = stmt2.executeQuery(sql2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<%while(rs2.next()){ %>
	<h2><%=rs2.getString("name") %></h2>
	<%} %>
		<table border="1">
		<%while(rs.next()){ %>
			<tr>
				<td>글쓴이</td>
				<td><%=rs.getString("username") %></td>
			</tr>
			<tr>
				<td colspan="2"><%=rs.getString("review") %></td>
			</tr>
		<%} %>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%
request.setCharacterEncoding("UTF-8");
Connection conn = null;
Statement stmt = null;
conn = Util.getConnection();
stmt = conn.createStatement();
String sql = "select * from tbl_book_01";
ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
<style>.nav2{text-decoration:underline;}</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<table border="1">
			<tr class="book">
				<td>제목</td>
				<td>출판사</td>
				<td>작가</td>
			</tr>
			<%
			while (rs.next()){
			%>
			<tr>
				<td><a href='select_action.jsp?id=<%=rs.getString("id")%>'><%=rs.getString("name")%></td>
				<td><%=rs.getString("publisher")%></td>
				<td><%=rs.getString("writer") %></td>
			</tr>
			<%} %>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
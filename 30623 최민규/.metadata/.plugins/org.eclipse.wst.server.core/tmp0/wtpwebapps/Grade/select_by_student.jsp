<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 성적 조회 프로그램</title>
<link rel="stylesheet" href="css.css">
<style>
li:nth-child(1) {
	text-decoration: underline;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<div align="center">
			<h2>학생 조회</h2>

			<%
			request.setCharacterEncoding("UTF-8");
			String find = Util.getParamNN(request.getParameter("find"));

			Connection conn = null;
			Statement stmt = null;
			String callback = "";
			try {
				conn = Util.getConnection();
				stmt = conn.createStatement();
				String sql = 
						"select " +
						"	id, " +
						"	name, " +
						"	substr(id,1,1) year, " +
						"	substr(id,2,2) class, " +
						"	substr(id,4,2) no, " +
						"	gender " +
						"from " + 
						"	member_tb1";
				ResultSet rs = stmt.executeQuery(sql);
			%>

			<table border="1">
				<tr>
					<td>학번</td>
					<td>이름</td>
					<td>학년</td>
					<td>반</td>
					<td>번호</td>
					<td>성별</td>
				</tr>
				
				<%
				while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString("id")%></td>
					<td><%=rs.getString("name")%></td>
					<td><%=rs.getString("year")%></td>
					<td><%=rs.getString("class")%></td>
					<td><%=rs.getString("no")%></td>
					<td><%=rs.getString("gender")%></td>
				</tr>
				<%
				}

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</table>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>



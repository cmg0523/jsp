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
String sql = "SELECT ts.scode, ts.sname, TO_CHAR(SUM(tp.cost * tsl.amount), "
		+ "'999,999,999,999') cost FROM tbl_product_01 tp INNER JOIN tbl_salelist_01 tsl ON tp.pcode = "
		+ "tsl.pcode INNER JOIN tbl_shop_01 ts ON tsl.scode = ts.scode GROUP BY ts.scode, ts.sname " + "ORDER BY 1";
ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장별 커피 판매관리</title>
<link rel="stylesheet" href="css.css" />
<style>
.nav3 {
	text-decoration: underline;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h3>매장별 판매액</h3>
		<table border="1">
			<tr>
				<td>매장코드</td>
				<td>매장명</td>
				<td>매장별 판매액</td>
			</tr>
			<%
			while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("scode")%></td>
				<td><%=rs.getString("sname")%></td>
				<td><%=rs.getString("cost")%></td>
			</tr>
			<%
			}
			%>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
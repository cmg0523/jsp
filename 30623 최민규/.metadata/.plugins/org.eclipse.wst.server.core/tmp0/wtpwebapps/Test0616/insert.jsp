<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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

	<h2>입력</h2>
	<form action="action.jsp" method="get">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"></td>
			</tr>
		</table>
		<input type="submit" value="제출">
		<input type="reset" value="재작성">
	</form>
</section>
<footer>copyright &copy;</footer>
</body>
</html>
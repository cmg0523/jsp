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
	<header> ���� </header>
	<nav>
		<ul>
			<li><a href="insert.jsp">�Է�</a></li>
			<li><a href="select.jsp">��ȸ</a></li>
		</ul>
	</nav>
<section>

	<h2>�Է�</h2>
	<form action="action.jsp" method="get">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"></td>
			</tr>
		</table>
		<input type="submit" value="����">
		<input type="reset" value="���ۼ�">
	</form>
</section>
<footer>copyright &copy;</footer>
</body>
</html>
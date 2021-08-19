<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name ="form1" action="action2.jsp" method=post>
	<input type="hidden" name ="task" value="insert">
	<table>
		<tr>
			<td>상품코드</td>
			<td><input type="text" name="pcode" value=""></td>
		</tr>
		<tr>
			<td>상품명</td>
			<td><input type="text" name="name" value=""></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><input type="text" name="cost" value=""></td>
		</tr>
		<tr>
			<td colspan="2" align = "center">
				<input type="submit" value="등 록">
				<input type="reset" value="다시쓰기">
			</td>
		</tr>
		
	</table>
</form>
</body>
</html>
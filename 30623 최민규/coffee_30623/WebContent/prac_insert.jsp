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
			<td>��ǰ�ڵ�</td>
			<td><input type="text" name="pcode" value=""></td>
		</tr>
		<tr>
			<td>��ǰ��</td>
			<td><input type="text" name="name" value=""></td>
		</tr>
		<tr>
			<td>�ݾ�</td>
			<td><input type="text" name="cost" value=""></td>
		</tr>
		<tr>
			<td colspan="2" align = "center">
				<input type="submit" value="�� ��">
				<input type="reset" value="�ٽþ���">
			</td>
		</tr>
		
	</table>
</form>
</body>
</html>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 

request.setCharacterEncoding("UTF-8");
String find = Util.getParamNN(request.getParameter("find"));

Connection conn = null;
Statement stmt = null;
String callback = "";
try{
	conn = Util.getConnection();
	stmt = conn.createStatement(); 
	String sql = 
			"SELECT "+
			"pcode, "+
			"name, cost "+
			"FROM "	+
			"tb1_product_01 ";
	if(find!=""){
		sql+="WHERE name LIKE '%"+find+"%' ";
	}
			
	ResultSet rs = stmt.executeQuery( sql);
%>
<form action="prac.jsp" method="get">
<input type="text" name="find">
<input type="submit" value="검색">
</form>
<table border = "1">
	<tr>
		<td>상품코드</td>
		<td>상품명</td>
		<td>금액</td>
		<td>삭제</td>
	</tr>
<% 
 while(rs.next()){
%>
	<tr>
		<td><%=rs.getString("pcode") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getInt("cost") %></td>
		<td><a href='delete.jsp?pcode=<%=rs.getString("pcode") %>'><button>삭제</button></a></td>
	</tr>
<%
 	}

} catch(Exception e){
  e.printStackTrace();
}
%>
	
</table>
<a href="prac_insert.jsp"><button>메뉴등록</button></a>
</body>
</html>
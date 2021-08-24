<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%
	request.setCharacterEncoding("UTF-8");

	String sel = Util.getParamNN(request.getParameter("sel"));
	String sch = Util.getParamNN(request.getParameter("sch"));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
<style>.nav3{text-decoration:underline;}</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h3>도서 등록</h3>
		<form method="get" action="select_search.jsp">
			<select name="sel">
				<option></option>
				<option value="name">도서명</option>
				<option value="writer">작가</option>
				<option value="publisher">출판사</option>
			</select>
			<input type="text" name="sch">
			<input type="submit" value="검 색">
		</form>
		<br><br>
		
		<% if(sch!=""&&sel!=""){
			
			Connection conn = null;
			Statement stmt = null;
			
			conn = Util.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from tbl_book_01 where "+sel+" like '%"+sch+"%'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
		%>
		<table border="1">
			<tr style="background-color:#ccc;">
				<td>제목</td>
				<td>출판사</td>
				<td>작가</td>
			</tr>
		<% do{ %>
				<tr>
					<td><a href='select_action.jsp?id=<%=rs.getString("id")%>'><%=rs.getString("name") %></a></td>
					<td><%=rs.getString("publisher") %></td>
					<td><%=rs.getString("writer") %></td>
				</tr>
			<% }while(rs.next()); %>
		</table>
		<% }else{
			%>
			<h4>검색 결과가 없습니다.</h4>
			<%
		}
		
		} %>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
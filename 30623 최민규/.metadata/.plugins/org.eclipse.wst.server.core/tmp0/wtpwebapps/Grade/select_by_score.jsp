<%@page import = "java.sql.*" %>
<%@page import = "DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 성적 조회 프로그램</title>
<link rel="stylesheet" href = "css.css">
<style>
li:nth-child(3){
	text-decoration:underline;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<div align="center">
	<h2 style="text-align:center">학생성적 조회</h2>
	
	<%-- 검색 기능 --%>
	<form action="select_by_score.jsp" method="get">
		<label>학번</label>
		<input type="text" name="find"/>
		<input type="submit" value="검색"/>
	</form>
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
			"SELECT mt.id, mt.name, substr(mt.id,1,1) year, substr(mt.id,2,2) class, substr(mt.id,4,2) no, mt.gender, sc.korean, sc.math, sc.english, sc.history,sc.korean+sc.math+sc.english+sc.history sum_score, (sc.korean+sc.math+sc.english+sc.history) /4 avg_score from  member_tb1 mt INNER JOIN score_tb1 sc ON mt.id = sc.id order by (sc.korean+sc.math+sc.english+sc.history) asc";
	if(find!="")
		sql ="SELECT mt.id, mt.name, substr(mt.id,1,1) year, substr(mt.id,2,2) class, substr(mt.id,4,2) no, mt.gender, sc.korean, sc.math, sc.english, sc.history,sc.korean+sc.math+sc.english+sc.history sum_score, (sc.korean+sc.math+sc.english+sc.history) /4 avg_score from  member_tb1 mt INNER JOIN score_tb1 sc ON mt.id = sc.id where mt.id="+find+" order by (sc.korean+sc.math+sc.english+sc.history) asc";
	
	ResultSet rs = stmt.executeQuery( sql);
%>

	<table border="1">
	<tr>
	    <th>학번</th>
	    <th>이름</th>
	    <th>학년</th>
	    <th>반</th>
	    <th>번호</th>
	    <th>성별</th>
	    <th>국어</th>
	    <th>수학</th>
	    <th>영어</th>
	    <th>역사</th>
	    <th>합계</th>
	    <th>평균</th>
	    <th>순위</th>
    </tr>
    
<% 
int i=0;
 while(rs.next()){
	 i++;
%>
	<tr>
		<td><%=rs.getString("id") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("year") %></td>
		<td><%=rs.getString("class") %></td>
		<td><%=rs.getString("no") %></td>
		<td><%=rs.getString("gender") %></td>
		<td><%=rs.getString("korean") %></td>
		<td><%=rs.getString("english") %></td>
		<td><%=rs.getString("math") %></td>
		<td><%=rs.getString("history") %></td>
		<td><%=rs.getInt("sum_score") %></td>
		<td><%=rs.getInt("avg_score") %></td>
		<td><%=i %></td>
	</tr>
<%
 	}

} catch(Exception e){
  e.printStackTrace();
}
%>
     <tr>
	  	<td colspan="6"></td>
	    <td>국어 총합</td>
	    <td>수학 총합</td>
	    <td>영어 총합</td>
	    <td>역사 총합</td>
	    <td>총합</td>
	    <td>총평균</td>
	    <td>-------</td>
    </tr>
<%
try{
	conn = Util.getConnection();
	stmt = conn.createStatement(); 
	String sql =  
		"select sum(korean) korean, sum(math) math, sum(english) english, sum(history) history, sum(korean+ math+ english+ history) sum_s, avg(korean+math+english+history) avg_s from score_tb1"; 
	
	ResultSet rs = stmt.executeQuery(sql);
%>
<% 
while(rs.next()){
%>
	<tr>
		<td colspan="6"></td>
		<td><%=rs.getString("korean") %></td>
		<td><%=rs.getString("math") %></td>
		<td><%=rs.getString("english") %></td>
		<td><%=rs.getString("history") %></td>
		<td><%=rs.getString("sum_s") %></td>
		<td><%=rs.getString("avg_s") %></td>
	 	<td>-------</td>
	</tr>
<%
	}

} catch(Exception e){
  e.printStackTrace();
}
%>
	</table>
	</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
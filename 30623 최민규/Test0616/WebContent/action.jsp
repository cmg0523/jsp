<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
String id = Util.getParamNN(request.getParameter("id"));

Connection conn = null;
Statement stmt = null;
conn = Util.getConnection();
stmt = conn.createStatement(); 
String sql = "INSERT INTO test VALUES("+id+")";
ResultSet rs = stmt.executeQuery(sql);
response.sendRedirect("select.jsp");
%>
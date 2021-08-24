<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%
request.setCharacterEncoding("UTF-8");
String title = Util.getParamNN(request.getParameter("title"));
String writer = Util.getParamNN(request.getParameter("writer"));
String publisher = Util.getParamNN(request.getParameter("publisher"));
Connection conn = null;
Statement stmt = null;
conn = Util.getConnection();
stmt = conn.createStatement();
String sql = "INSERT INTO tbl_book_01 VALUES(seq.nextval, '" + title + "', '" + publisher + "', '" + writer + "')";
stmt.executeUpdate(sql);
response.sendRedirect("insert.jsp");
%>
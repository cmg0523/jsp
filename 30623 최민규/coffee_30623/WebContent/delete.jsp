<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("UTF-8");

	String pcode = Util.getParamNN(request.getParameter("pcode"));
    Connection conn = null;
    
    Statement stmt = null;
    String callback = "";
    
    try{
    	conn = Util.getConnection();
    	stmt = conn.createStatement(); 
    	String sql = 
    			"DELETE FROM tb1_product_01 WHERE pcode = '"+pcode+"'";
  
    			
    	 stmt.executeUpdate(sql);
    	 callback = "prac.jsp";
    	 
    } catch(Exception e){
    	  e.printStackTrace();
    }
    response.sendRedirect(callback);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
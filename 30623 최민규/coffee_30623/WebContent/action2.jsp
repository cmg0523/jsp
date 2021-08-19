<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("UTF-8");

	String pcode = Util.getParamNN(request.getParameter("pcode"));
	String name = Util.getParamNN(request.getParameter("name"));
	String cost = Util.getParamNN(request.getParameter("cost"));
    Connection conn = null;
    
    Statement stmt = null;
    String callback = "";
    
    try{
    	conn = Util.getConnection();
    	stmt = conn.createStatement(); 
    	String sql = 
    			"INSERT INTO tb1_product_01(pcode, name, cost) VALUES('" +
    			pcode +
    			"', '" +
    			name +
    			"', " +
    			cost + 
    			")"; //삽입때 쓰는 코드들
  
    			
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
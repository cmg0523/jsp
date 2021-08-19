<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

	String pcode = Util.getParamNN(request.getParameter("pcode"));
	String saleno = Util.getParamNN(request.getParameter("saleno"));
	String saledate = Util.getParamNN(request.getParameter("saledate"));
	String scode = Util.getParamNN(request.getParameter("scode"));
	String amount = Util.getParamNN(request.getParameter("amount"));
    Connection conn = null;
    
    Statement stmt = null;
    String callback = "";
    
    try{
    	conn = Util.getConnection();
    	stmt = conn.createStatement(); 
    	String sql = "INSERT INTO tb1_salelist_01 VALUES("+ saleno +", "
				+"'"+pcode+"', " + 
				"TO_DATE('"+saledate+"', 'YYYY-MM-DD'), '" + scode + "' ,"+amount+")";
  
    			
    	 stmt.executeUpdate(sql);
    	 callback = "c_insert.jsp";
    	 
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
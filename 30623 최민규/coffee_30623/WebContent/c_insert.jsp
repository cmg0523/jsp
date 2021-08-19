<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div align="center">
<h2>판매등록</h2>
	<form  action="action.jsp" method="post">
		<input type="hidden" name ="task" value="insert">
	    <table border="1">
	    	<tr>
	   			<td>판매번호</td>
	    		<td><input type="text" name="saleno" value=""></td>
	    	</tr>
	    	<tr>
	   			<td>상품코드</td>
	    		<td><input type="text" name="pcode" value=""></td>
	    	</tr>
	    	<tr>
	   			<td>판매날짜</td>
	    		<td><input type="text" name="saledate" value=""></td>
	    	</tr>
	    	<tr>
	   			<td>매장코드</td>
	    		<td><input type="text" name="scode" value=""></td>
	    	</tr>
	    	<tr>
	   			<td>판매수량</td>
	    		<td><input type="text" name="amount" value=""></td>
	    	</tr>
	    	<tr>
	    		<td colspan="2" align="center">
	    		<input type="submit" value="등록">
	    		<input type="reset" value ="다시쓰기"></td>
	    	</tr>
	    </table>
    </form>
 </div>
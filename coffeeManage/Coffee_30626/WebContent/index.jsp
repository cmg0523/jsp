<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장별 커피 판매관리</title>
<link rel="stylesheet" href="css.css" />
<style>.nav5{text-decoration:underline;}</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h3>매장별 커피 판매관리 프로그램</h3>
		<pre>
		매장별 커피 판매를 관리하기 위한 프로그램이다. 
		1. 상품테이블, 매자테이블, 판매테이블을 추가한다. 
		2. 판매등록, 판매현황, 매장별판매액, 상품별판매액 페이지를 작성한다. 
		3. 올바르게 구현되었는지 확인하다. 
		</pre>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
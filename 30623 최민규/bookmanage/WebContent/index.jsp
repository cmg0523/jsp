<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
<style>.nav4 {text-decoration: underline;}</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h3>도서 관리 프로그램</h3>
		<pre>
		도서관리 프로그램을 작성한다.
	
		1. 도서정보 테이블, 리뷰테이블을 생성한다.
		2. 도서등록, 도서목록, 도서검색 페이지를 작성한다.
		3. 올바르게 구현되었는지 확인한다.
		</pre>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
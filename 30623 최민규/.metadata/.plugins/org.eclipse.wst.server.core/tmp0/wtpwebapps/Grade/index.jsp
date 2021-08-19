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
li:nth-child(4){
	test-decoration:underline;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<h3 align = "center">학생성적 관리 프로그램</h3>
	
	<br>
	 학생과 학생 성적에 관한 데이터베이스를 구축하고 관리하기 위한 프로그램이다.
	<br>
	<br>
	 <p>1. 학생정보 및 학생성적 테이블을 생성하고 샘플데이터를 추가한다.<br>
	 2. 학생조회, 학생성적 입력, 학생성적 조회 프로그램을 작성한다.<br>
	 3. 올바르게 구현되었는지 확인한다.</p>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
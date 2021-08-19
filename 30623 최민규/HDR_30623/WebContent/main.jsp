<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");
String section = Util.getParamNN(request.getParameter("section"));
%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>오디션 관리 프로그램</title>
			<link href="css.css" rel="stylesheet"></link>
		</head>
		
		<body>
			<header>
				<p>(과정평가형 정보처리산업기사) 오디션 관리 프로그램 ver 2019-06</p>
			</header>
			<nav>
				<ul>
					<li><a href="audition.jsp">오디션등록</a></li>
					<li><a href="list.jsp">참가자목록조회</a></li>
					<li><a href="score.jsp">멘토점수조회</a></li>
					<li><a href="rank.jsp">참가자등수조회</a></li>
					<li><a href="index.jsp">홈으로</a></li>				
				</ul>
			</nav>
			<section>

			</section>
			<footer>
				<p>HRDKOREA Copyright&copy;2019 All rights reserved. Human Resources Development Service of Korea</p>
			</footer>
		</body>
	</html>
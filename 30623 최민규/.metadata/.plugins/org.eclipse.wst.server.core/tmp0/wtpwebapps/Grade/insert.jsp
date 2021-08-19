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
li:nth-child(2){
	text-decoration:underline;
}
</style>
<script>
function validate(){
	
	var id = document.getElementById("id").value;
	var korean = document.getElementById("korean").value;
	var math = document.getElementById("math").value;
	var english = document.getElementById("english").value;
	var history = document.getElementById("history").value;
	
	if(id==""){
		alert("학번을 입력해주세요");
		return false;
	}
	if(isNaN(korean)==true){
		alert("올바른 국어 성적을 입력하세요. 숫자만 입력 가능합니다.");
		return false;
	}
	if(isNaN(math)==true){
		alert("올바른 수학 성적을 입력하세요. 숫자만 입력 가능합니다.");
		return false;
	}
	if(isNaN(english)==true){
		alert("올바른 영어 성적을 입력하세요. 숫자만 입력 가능합니다.");
		return false;
	}
	if(isNaN(history)==true){
		alert("올바른 역사 성적을 입력하세요. 숫자만 입력 가능합니다.");
		return false;
	}

}

</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<div align = "center">
	
	<h2>학생 성적 등록</h2>
	<form action="action.jsp" onsubmit = "return validate()" method="post">
		<table>
			<tr>
				<td width="80px">학번</td>
				<td><input type="text" name="id" id ="id"/></td>
			</tr>
			<tr>
				<td>국어</td>
				<td><input type="text"  name="korean" id ="korean"/></td>
			</tr>
			<tr>
				<td>수학</td>
				<td><input type="text"  name="math" id ="math"/></td>
			</tr>
			<tr>
				<td>영어</td>
				<td><input type="text"  name="english" id ="english"/></td>
			</tr>
			<tr>
				<td>역사</td>
				<td><input type="text"  name="history" id ="history"/></td>
		</tr>
		
		</table>
		<input type="submit" value="등록"/>
	</form>
	</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
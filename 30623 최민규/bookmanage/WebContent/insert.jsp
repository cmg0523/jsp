<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
<style>.nav1{text_decoration:none;}</style>
</head>
<body>
	<script>
		function check(){
			var title = document.getElementById("title").value;
			var writer = document.getElementById("writer").value;
			var publisher = document.getElementById("publisher").value;
			
			if(title==""){
				alert("책 이름이 입력되지 않았습니다.");
				return false;
			}
			else if(publisher==""){
				alert("출판사가 입력되지 않았습니다.");
				return false;
			}
			else if(writer==""){
				alert("작가가 입력되지 않았습니다.");
				return false;
			}
			else{
				return true;
			}
		}	
		function resetcheck(){
			if(confirm("다시쓰시겠습니까?")){
				return true;
			}
			else {
				return false;
			}
		}
	</script>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<h3>도서등록</h3>
	<form action="action.jsp" method="get" onreset="return resetcheck()" onsubmit="return check()">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" id="title" /></td>
			</tr>
			<tr>
				<td>출판사</td>
				<td><input type="text" name="publisher" id="publisher" /></td>
			</tr>
			<tr>
				<td>작가</td>
				<td><input type="text" name="writer" id="writer" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="등 록"/>
				<input type="reset" value="다시쓰기"/>
				</td>
			</tr>
		</table>
	</form>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
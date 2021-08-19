<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css" />
<style>
.nav1 {
	text-decoration: underline;
}
</style>
</head>
<body>
	<script>
		function check() {
			var a = document.getElementById("saleno").value;
			var b = document.getElementById("pcode").value;
			var c = document.getElementById("saledate").value;
			var d = document.getElementById("scode").value;
			var e = document.getElementById("amount").value;

			if (a == "") {
				alert("판매번호가 입력되지 않았습니다.");
				return false;
			} else if (b == "") {
				alert("상품코드가 입력되지 않았습니다.");
				return false;
			} else if (c == "") {
				alert("판매날짜가 입력되지 않았습니다.");
				return false;
			} else if (d == "") {
				alert("매장코드가 입력되지 않았습니다.");
				return false;
			} else if (e == "") {
				alert("판매수량이 입력되지 않았습니다.");
				return false;
			} else {
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
		<h3>판매등록</h3>
		<form action="action.jsp" method="get" onsubmit="return check()" onreset="return resetcheck()">
			<table border="1">
				<tr>
					<td>판매번호</td>
					<td><input type="text" name="saleno" id="saleno" /></td>
				</tr>
				<tr>
					<td>상품코드</td>
					<td><input type="text" name="pcode" id="pcode" /></td>
				</tr>
				<tr>
					<td>판매날짜</td>
					<td><input type="text" name="saledate" id="saledate" /></td>
				</tr>
				<tr>
					<td>매장코드</td>
					<td><input type="text" name="scode" id="scode" /></td>
				</tr>
				<tr>
					<td>판매수량</td>
					<td><input type="text" name="amount" id="amount" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등 록" /> <input
						type="reset" value="다시쓰기" /></td>
				</tr>
			</table>
		</form>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
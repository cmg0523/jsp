<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css" />
</head>
<body>
	<header> 매장별 커피 판매관리 ver 1.0 </header>
	<nav>
		<ul>
			<li><a class="nav1" href="insert.jsp">판매등록</a></li>
			<li><a class="nav2" href="select.jsp">판매현황</a></li>
			<li><a class="nav3" href="select_shop.jsp">매장별판매액</a></li>
			<li><a class="nav4" href="select_product.jsp">상품별판매액</a></li>
			<li><a class="nav5" href="index.jsp">홈으로</a></li>
		</ul>
	</nav>

	<section>
		<h3>판매등록</h3>
		<form action="action.jsp" method="get">
			<table>
				<tr>
					<td>판매번호</td>
					<td><input type="text" name="saleno" /></td>
				</tr>
				<tr>
					<td>상품코드</td>
					<td><input type="text" name="pcode" /></td>
				</tr>
				<tr>
					<td>판매날짜</td>
					<td><input type="text" name="saledate" /></td>
				</tr>
				<tr>
					<td>매장코드</td>
					<td><input type="text" name="scode" /></td>
				</tr>
				<tr>
					<td>판매수량</td>
					<td><input type="text" name="amount" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등 록" /> <input
						type="reset" value="다시쓰기" /></td>
				</tr>
			</table>
		</form>
	</section>

	<footer></footer>
</body>
</html>
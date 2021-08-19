<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.btn-group {text-align:center}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width,initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>nav</title>
</head>
<body>

<div class="container">
<div class="clo-lg-4"></div>
<div class="clo-lg-4">
	<div class="jumbotron" style="padding-top:30px">
		<form action="loginAction.jsp" method="post">
			<h4 style="text-align:center;">회원가입</h4>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20" />
			</div>
			<div class="form-group">
				<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" />
			</div>
			<div class="form-group">
			<input type="text" class="form-control" placeholder="이름" name="username" maxlength="20" />
			</div>
			<div class="form-group" style="text-align:center">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-primary">남자</button>
					<button type="button" class="btn btn-primary">여자</button>
				</div>
			</div>
			
			<div class="form-group">
				<input type="email" class="form-control" placeholder="이메일" name="usermail" maxlength="20" />
				</div>
			<input type="submit" class="btn btn-primary form-control" value="회원가입"/>
		</form>
	</div>
</div>
<div class="clo-lg-4">
</div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>
</html>
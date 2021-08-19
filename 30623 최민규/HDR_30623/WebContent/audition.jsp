<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
function check(){
	var a = document.getElementById("no").value;
	var b = document.getElementById("no1").value;
	var c = document.getElementById("no2").value;
	
	var f = document.getElementById("no3").value;
	/*document.write(a);*/
	a값이 있는지 없는지
	if(a==""){
		alert("참가번호가 입력되지 않았습니다.");
		return false;
	}
	else if(b==""){
		alert("참가자명이 입력되지 않았습니다.");
		return false;
	}
	else if(c==""){
		alert("생년월일이 입력되지 않았습니다.");
		return false;
	}
	
	else if(f==""){
		alert("소속사가 입력되지 않았습니다.");
		return false;
	}
	else {
		return true;
	}
}
</script>
    <header>
				<p>(과정평가형 정보처리산업기사) 오디션 관리 프로그램 ver 2019-06</p>
				<link href="css.css" rel="stylesheet"></link>
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
<h1>오디션 등록</h1>
<form onsubmit = "return check()">
	<table border="1">
		<tr>
			<td>참가번호</td>
			<td class="sub1_left"><input type="text" id="no">*참가번호는 (A000)4자리입니다</td>
		</tr>
		<tr>
			<td>참가자명</td>
			<td class="sub1_left"><input type="text" id="no1"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td class="sub1_left"><input type="text" id="no2">년<input type="text">월<input type="text">일</td>
		</tr>
		<tr>
			<td>성별</td>
			<td class="sub1_left"><input type="radio" name="gender" value="남성" >남성<input type="radio" name="gender" values="여성">여성</td>
		</tr>
		<tr>
			<td>특기</td>
			<td class="sub1_left">
				<select>
					<option value="">특기선택</option>
					<option value="1">[1]보컬</option>
					<option value="2">[2]댄스</option>
					<option value="3">[3]랩</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>소속사</td>
			<td class="sub1_left"><input type="text" id="no4"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="오디션 등록"> <input type="reset"></td>
		</tr>
	</table>
</form>
<footer>
				<p>HRDKOREA Copyright&copy;2019 All rights reserved. Human Resources Development Service of Korea</p>
			</footer>
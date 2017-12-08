<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>회원가입 페이지</title>
		
		<script src="joinFormScript.js"></script>
	</head>
	<body>
		<h1>회원가입</h1>
		
		<!-- 이 화면 그대로 놔두고 중복확인은 아직 구현하기 힘들다 -->
		<!-- 아니면 중복확인 누르고 새로운 팝업창에서 아이디를 검사하도록 할 수 있다 -->
		<form action="member" onsubmit="return validation();">
			<input type="text" name="id" id="id" placeholder="ID" readonly>
			<input type="button" value="중복확인" onclick="checkId();">
			<br>
			<input type="password" name="password" id="password" placeholder="Password">
			<br>
			<input type="password" name="password_c" id="password_c" placeholder="PasswordCheck">
			<br>
			<input type="text" name="name" id="name" placeholder="Name">
			<br>
			<input type="tel" name="phone" id="phone" placeholder="Phone">
			<br>
			<input type="text" name="address" id="address" placeholder="Address">
			<br>
			<input type="submit" value="가입">
			<input type="hidden" name="action" value="join">
		</form>
		
	</body>
</html>
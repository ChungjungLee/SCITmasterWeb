<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>회원정보 수정 페이지</title>
		
		<script src="joinFormScript.js"></script>
	</head>
	<body>
		<h1>수정 폼</h1>
		
		<form action="member" method="POST" onsubmit="return validation();">
			아이디: ${sessionScope.id} <br>
			
			<!-- 비밀번호랑 확인이 같으면 수정 가능하게끔 -->
			<input type="hidden" value="${member.id}" id="id">
			비밀번호: <input type="password" name="password" id="password">
			<br>
			비밀번호 확인: <input type="password" name="password_c" id="password_c">
			<br>
			이름: <input type="text" name="name" id="name" value="${member.name}">
			<br>
			전화번호: <input type="tel" name="phone" id="phone" value="${member.phone}">
			<br>
			주소: <input type="text" name="address" id="address" value="${member.address}">
			
			<input type="submit" value="수정">
			<input type="hidden" name="action" value="update">
		</form>
	</body>
</html>
































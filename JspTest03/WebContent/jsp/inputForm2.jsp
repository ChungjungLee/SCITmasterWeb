<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>GET 테스트 03</title>
	</head>
	<body>
		<!-- form에서 method값을 주지 않으면 default GET 방식을 사용 -->
		<form action="../gettest" method="GET">
			이름: <input type="text" name="username">
			<br>
			나이: <input type="text" name="age">
			<br>
			<input type="submit" value="submit">
		</form>
	</body>
</html>
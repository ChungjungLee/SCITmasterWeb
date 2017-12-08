<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 06</title>
	</head>
	<body>
		<h1>JSP 테스트 06</h1>
		
		<!-- form 양식은 이미 유저한테 넘어간 것이므로 name이라는 att를 주지 않으면
			서버측에서는 그 값을 읽어들일 수 없다 -->
		<form action="test6" method="GET">
			<input type="text" name="username">
			<input type="submit" value="submit">
		</form>
		
		
	</body>
</html>
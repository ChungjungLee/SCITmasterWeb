<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 07</title>
	</head>

	<body>
		<h1>JSP 테스트 07</h1>
		<form action="test7" method="POST">
			아이디: 
			<input type="text" name="id">
			
			<br>
			
			비밀번호: 
			<input type="text" name="pw">
			<input type="submit" value="login">
		</form>
	</body>
</html>
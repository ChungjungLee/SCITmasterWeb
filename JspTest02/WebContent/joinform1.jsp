<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>가입폼 1 페이지</title>
	</head>
	<body>
		<!-- 가입폼 -->
		<!-- 비밀번호를 보내기 때문에 GET방식이 아닌 POST방식을 사용 -->
		<form action="join1" method="POST">
			E-mail: 
			<input type="email" name="email">
			
			<br>
			
			Password: 
			<input type="password" name="pw">
			
			<br>
			
			Password check:
			<input type="password" name="pwc">
			
			<br>
			
			Username:
			<input type="text" name="username">
			
			<br>
			
			<input type="submit" value="Sign in">
		</form>
		
		
		
	</body>
</html>
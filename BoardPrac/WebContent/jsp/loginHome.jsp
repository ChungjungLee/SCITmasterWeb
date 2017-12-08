<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>로그인</title>
		
		<script type="text/javascript">
			function memberjoin() {
				location.href="member?action=joinhome";
				
			}
		</script>
	</head>
	<body>
		<form action="member" method="POST">
			<input type="text" name="id" placeholder="ID">
			<br>
			<input type="password" name="password" placeholder="Password">
			<br>
			<input type="submit" value="로그인">
			<input type="hidden" name="action" value="login">
			
		</form>
		<button onclick="memberjoin();">회원가입</button>
	</body>
</html>
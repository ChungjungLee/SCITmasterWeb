<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>로그인 페이지</title>
		
		<script type="text/javascript">
			function validation() {
				var eId = document.getElementById('id');
				if (eId.value == '') {
					alert('아이디 입력해 주세요');
					return false;
				}
				
				var ePw = document.getElementById('password');
				if (ePw.value == '') {
					alert('비밀번호 입력해 주세요');
					return false;
				}
				
				return true;
			}
		</script>
	</head>
	<body>
		<h1>로그인</h1>
		
		<form action="member" method="POST" onsubmit="return validation();">
			<input type="hidden" name="action" value="login">
			
			<input type="text" name="id" id="id" placeholder="ID">
			<br>
			<input type="password" name="password" id="password" placeholder="Password">
			<br>
			<input type="submit" value="로그인">
		</form>
	</body>
</html>
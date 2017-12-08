<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 05</title>
	</head>
	<body>
		<h1>JSP 테스트 05</h1>
		
		<!-- action내 호출하는 이름과 servlet내 @에서의 이름이 일치해야 한다 -->
		<form action="test5" method="GET">
			<input type="submit" value="날짜 구하기">
			
		</form>
		
	</body>
</html>
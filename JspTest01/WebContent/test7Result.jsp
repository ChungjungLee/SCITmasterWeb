<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 07 결과</title>
	</head>
	<body>
		<h1>JSP 테스트 07 결과</h1>
		
		아이디: 
		<%=request.getParameter("id") %>
		
		<br>
		
		비밀번호: 
		<%=request.getParameter("pw") %>
	</body>
</html>
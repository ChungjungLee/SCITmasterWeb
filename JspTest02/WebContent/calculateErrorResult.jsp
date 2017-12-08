<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>계산 결과 오류 페이지</title>
	</head>
	<body>
		<h1>계산 오류 발생</h1>
		
		<%=request.getParameter("left") %> 
		<%=request.getParameter("operator") %> 
		<%=request.getParameter("right") %> 
		계산 중 오류 발생
	</body>
</html>
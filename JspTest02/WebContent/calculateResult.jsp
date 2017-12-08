<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>계산 결과 페이지</title>
	</head>
	<body>
		<%=request.getParameter("left") %> 
		<%=request.getParameter("operator") %> 
		<%=request.getParameter("right") %> 
		의 계산 결과는 
		<%=request.getAttribute("operator") %>
		입니다.
		
		<!-- attribute는 위에처럼 접근하지 않고 다른 방법이 있다 -->
	</body>
</html>
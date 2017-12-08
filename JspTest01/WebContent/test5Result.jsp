<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 05 결과 페이지</title>
	</head>
	<body>
		<h1>JSP 테스트 05 결과 페이지</h1>
		
		<!-- request는 이미 만들어져 있는 객체 -->
		<%=request.getAttribute("year") %>년
		<%=request.getAttribute("month") %>월
		<%=request.getAttribute("date") %>일
		
		
	</body>
</html>
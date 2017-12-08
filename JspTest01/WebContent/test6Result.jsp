<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 06 결과</title>
	</head>
	<body>
		<h1>JSP 테스트 06 결과</h1>
		
		<!-- getParameter()랑 getAttribute()랑 차이가 있다.
			user가 작성한 양식 등의 정보는 request 내 parameter에 담겨 있다.
			그렇지 않고 서블릿에서 새로 담아 놓은 정보는 request 내 attribute에 담겨 있다.
		 -->
		<%=request.getAttribute("username") %>님 반갑습니다.
		<%=request.getParameter("username") %>님 반갑습니다.
		
	</body>
</html>
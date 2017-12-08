<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>EL 테스트 결과</title>
	</head>
	<body>
		<!-- 기본 JSP 표현식을 통한 변수 출력 -->
		s by expression: <%=request.getAttribute("s") %> <br>
		i by expression: <%=request.getAttribute("i") %> <br>
		
		<br>
		
		<!-- EL을 이용한 변수 출력 -->
		<!-- scope때문에 문제가 발생한다 -->
		s by EL: ${s} <br>
		i by EL: ${i} <br>
		
		<hr>
		
		<!-- 기본 JSP 표현식을 통한 파라미터 출력(request) -->
		data1 by expression: <%=request.getParameter("data1") %> <br>
		data2 by expression: <%=request.getParameter("data2") %> <br>
		data3 by expression: <%=request.getParameter("data3") %> <br>
		
		<br>
		
		<!-- EL을 이용한 파라미터 출력 -->
		data1 by EL: ${param.data1} <br>
		data2 by EL: ${param.data2} <br>
		data3 by EL: ${param.data3} <br>
		all parameters by EL: ${param} <br>
		
		<hr>
		
		Scope test<br>
		default value: ${test}<br>
		request context: ${requestScope}<br>
		session context: ${sessionScope}<br>
		request test value: ${requestScope.test}<br>
		session test value: ${sessionScope.test}<br>
	</body>
</html>























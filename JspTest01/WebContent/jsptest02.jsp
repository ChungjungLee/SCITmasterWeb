<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 02</title>
	</head>
	<body>
		<h1>JSP 테스트 02</h1>
		
		<h4>구구단</h4>
		
		<!-- 요즘에는 scriptlet을 잘 사용하지 않는다고 함 -->
		<%
			for (int left = 2; left < 10; left++) {
		%>
				<!-- <%=left + "단" %> <br> -->
				<h5><%=left %>단</h5>
		<%
				for (int right = 1; right < 10; right++) {
		%>
					<%=left %> * <%=right %> = <%=left * right %> <br>
		<%
				}
		%>
				<br>
		<%
			}
		%>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Redirect/Forward 결과</title>
	</head>
	<body>
		<h1>Redirect/Forward</h1>
		<%
			String s = (String) request.getAttribute("s");
			int i = (Integer) request.getAttribute("i");
			String[] arr = (String[]) request.getAttribute("arr");
		%>
		
		<%=s %><br>
		<%=i %><br>
		<%
			for (String str:arr) {
		%>
				<%=str %>
		<%
			}
		%>
		<br>
		
		<%=request.getParameter("param") %>
	</body>
</html>
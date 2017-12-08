<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 01</title>
	</head>
	<body>
		<h1>JSP 테스트 01</h1>
		
		<!-- java code 삽입 태그 -->
		<% 
			// java scriptlet 내의 주석
			/* java scriptlet 내의 주석 */
			int i = 10;
			int j = 20;
			String s = "hello world";
			
		%>
		
		<!-- java code 내에서 선언한 변수들 출력 태그 -->
		<%=i %>
		<br>
		<%=j %>
		<br>
		<%=s %>
		<br>
		<%= i + j %>
		<br>
		<!-- java code에 줄바꿈을 암리 추가해도 실제 브라우저에서 출력할 때는 신경 안 쓴다 -->
		<!-- html 코드에서 줄바꿈은 <br>로만 가능했던 것이 그대로 적용됨 -->
		<%= s + "한글" %>
		
		<br><br>
		
		<!-- java의 for loop을 이용한 반복 출력 -->
		<%
			for (int ii = 0; ii < 5; ii++) {
				// 원래는 이렇게 출력을 했지만 scriptlet에서는 안 된다.
				// System.out.println(ii);
		%>
			<%=ii %>,
		<!-- 이렇게 loop를 쪼개서 사용 가능 --> 
		<%
			}
		%>
		
		<br><br>
		
		<%
			for (int iii = 1; iii < 101; iii++) {
		%>
			<%=iii %> 
		<%
			}
		%>
		
		<br><br>
		
		<%
			for (int jj = 2; jj < 101; jj += 2) {
		%>
			<%=jj %> 
		<%
			}
		%>
		
		<br><br>
		
		<%
			for (int l = 1; l < 101; l++) {
				if (l % 2 == 0) {
		%>
				<%=l %> 
		<%
				}
			}
		%>
		
	</body>
</html>
































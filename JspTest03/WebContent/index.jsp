<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 03</title>
	</head>
	<body>
		<ul>
			<li>
				<!-- Post는 정보를 숨겨야하기 때문에 form을 만들어줄 필요가 있음 -->
				<!-- 주소표시줄을 통해 호출하는 것은 불가능 -->
				<a href="jsp/inputForm.jsp">POST 테스트</a>
			</li>
			
			<li>
				<!-- servlet을 바로 불러오겠다 -->
				<a href="gettest">GET 테스트</a>
			</li>
			
			<li>
				<!-- ?의 의미: get방식으로 보냈다는 의미 -->
				<!-- key=value&key=value&key=value&... -->
				<!-- 주소창을 통해 param을 넘기는건 GET만 가능하다 -->
				<a href="gettest?username=abc&age=20">GET 테스트 2</a>
			</li>
			
			<li>
				<a href="jsp/inputForm2.jsp">GET 테스트 3</a>
			</li>
			
			<li>
				<a href="redirecttest?param=1">Redirect 테스트</a>
			</li>
			
			<li>
				<a href="forwardtest?param=1">Forward 테스트</a>
			</li>
		</ul>
	</body>
</html>
































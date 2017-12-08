<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 04</title>
		
	</head>
	<body>
		<h1>JSP 테스트 04</h1>
		
		<%
			// HTML 내 checkbox tag를 만들기 위한 값들
			ArrayList<String> hobbies = new ArrayList<>();
			hobbies.add("IT");
			hobbies.add("일본어");
			hobbies.add("게임");
			hobbies.add("요리");
			hobbies.add("음악감상");
		%>
		
		<input type="checkbox" name="hobby" value="IT">IT
		<input type="checkbox" name="hobby" value="일본어">일본어
		<input type="checkbox" name="hobby" value="게임">게임
		<input type="checkbox" name="hobby" value="요리">요리
		<input type="checkbox" name="hobby" value="음악감상">음악감상
		
		<%
			for(String hobby : hobbies) {
		%>
				<input type="checkbox" name="hobby" value="<%=hobby %>"><%=hobby %>
		<%
			}
		%>
		
		<br><br>
		
		<%
			ArrayList<String> jobs = new ArrayList<>();
			jobs.add("개발자");
			jobs.add("프로그래머");
			jobs.add("직장인");
			jobs.add("강사");
			jobs.add("변호사");
			jobs.add("일용직");
			jobs.add("자영업");
			jobs.add("학생");
			jobs.add("무직");
			jobs.add("의사");
		%>
		
		<%
			for(String job : jobs) {
		%>
				<input type="checkbox" name="job" value="<%=job %>"><%=job %>
		<%
			}
		%>
		
		
		<p id="pid">글씨가 바뀝니다.</p>
		
		<input type="button" value="button" onclick="change()">
		
		<script type="text/javascript">
			function change() {
				alert('클릭');
				var w = document.getElementById('pid');
				w.innerHTML = "버튼 클릭";
				w.style = 'color: blue;';
			}
		</script>
		
	</body>
</html>
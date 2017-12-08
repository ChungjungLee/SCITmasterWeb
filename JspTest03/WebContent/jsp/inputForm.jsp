<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>InputForm 테스트 페이지</title>
	</head>
	<body>
		<h1>Input Form</h1>
		
		<form action="../posttest" method="POST">
			문자열: <input type="text" name="str">
			<br>
			숫자: <input type="text" name="num">
			<br>
			라디오버튼:
			<input type="radio" name="ra" value="r1"> 라1
			<input type="radio" name="ra" value="r2"> 라2
			<input type="radio" name="ra" value="r3"> 라3
			<br>
			체크박스:
			<input type="checkbox" name="ch" value="c1"> 체1
			<input type="checkbox" name="ch" value="c2"> 체2
			<input type="checkbox" name="ch" value="c3"> 체3
			<br>
			
			<input type="submit" value="전송">
		</form>
	</body>
</html>
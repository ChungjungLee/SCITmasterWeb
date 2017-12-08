<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>계산 페이지</title>
	</head>
	<body>
		<form action="calculate" method="GET">
			<input type="text" name="left">
			 
			<select name="operator">
				<option>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
			 
			<input type="text" name="right">
			 
			<input type="submit" value="계산">
		</form>
	</body>
</html>
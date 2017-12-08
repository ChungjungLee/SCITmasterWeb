<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>환영합니다</title>
	</head>
	<body>
		<core:set var="id" value="${id}" />
		<core:set var="username" value="${username}" />
		 
		<h3>${username}님 반갑습니다</h3>
		
		<form action="board" method="POST">
			제목: <input type="text" name="title">
			<br>
			글내용: 
			<br>
			<textarea name="content" rows="10" cols="50"></textarea>
			<br>
			<input type="submit" value="글쓰기">
			<input type="hidden" name="action" value="write">
		</form>
		
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSTL 테스트 3</title>
	</head>
	<body>
		<h2>문자열 관련 함수</h2>
		
		<c:set var="str" value="abc ABC 가나다" />
		
		원본 문자열: ${str} <br>
		substring: ${fn:substring(str, 2, 6)} <br>
		toUppercase: ${fn:toUpperCase(str)} <br>
		toLowercase: ${fn:toLowerCase(str)} <br>
		
		length: ${fn:length(str)} <br>
		
		split: 
		<c:set var="list" value="${fn:split(str, ' ')}" /> 
		<c:forEach var="s" items="${list}">
			${s}, 
		</c:forEach>
	</body>
</html>



























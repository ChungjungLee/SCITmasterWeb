<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSTL 테스트 1 페이지</title>
	</head>
	<body>
		<core:set var="d" value="<%=new Date() %>" />
		scope test: ${d} <br>
		<!-- 포맷의 변환 -->
		<!-- controller에서 정보를 가공한 다음에 출력하기만 하면 되므로 이걸 많이 사용하진 않음 -->
		<h2>formatDate - 시간 관련 포맷</h2>
		
		<fmt:formatDate value="${d}" type="time"/> <br>
		<fmt:formatDate value="${d}" type="date"/> <br>
		<fmt:formatDate value="${d}" type="both"/> <br>
		
		<fmt:formatDate value="${d}" type="time" pattern="hh시 mm분 ss초"/> <br>
		<fmt:formatDate value="${d}" type="date" pattern="yyyy년 MM월 dd일 E요일"/> <br>
		
		<hr>
		
		<h2>formatNumber - 숫자 관련 포맷</h2>
		<core:set var="num1" value="12341234.56" />
		<core:set var="num2" value="99.9" />
		<core:set var="num3" value="0.1" />
		
		<!-- #은 숫자를 출력하기는 하나 없는 자리는 출력하지 않음 -->
		<!-- 0은 숫자가 없어도 0을 출력함 -->
		<fmt:formatNumber value="${num1}" pattern="#,###.00" /> <br>
		<fmt:formatNumber value="${num2}" pattern="#,###.00" /> <br>
		<fmt:formatNumber value="${num3}" pattern="0.0 %" />
	</body>
</html>




























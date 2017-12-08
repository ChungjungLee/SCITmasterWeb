<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="jstlc" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSTL 테스트 1 페이지</title>
	</head>
	<body>
		<h2>set - attribute 저장</h2>
		
		<!-- jstl의 사용 방법 -->
		<!-- 아래의 변수 선언은 pageScope에 저장된다 -->
		<jstlc:set var="num" value="100" />
		
		<!-- scriptlet을 사용하지 않아도 가능해졌다 -->
		num: ${num}<br>
		
		<br>
		
		<h2>remove - attribute 삭제</h2>
		
		<jstlc:remove var="num" />
		num: ${num}<br>
		
		<br>
		
		<h2>if - 조건문</h2>
		
		<jstlc:set var="str" value="abc"></jstlc:set>
		<jstlc:set var="num" value="3"></jstlc:set>
		
		<!-- if문 1 -->
		<jstlc:if test="${str == 'abc'}">
			str은 ${str}입니다.<br>
		</jstlc:if>
		
		<!-- if문 2 -->
		<jstlc:if test="${num > 0}">
			num은 0보다 크다.<br>
		</jstlc:if>
		
		<br>
		
		<h2>choose - 분기</h2>
		
		<jstlc:choose>
			<jstlc:when test="${num == 1}">
				num은 1입니다.<br>
			</jstlc:when>
			<jstlc:when test="${num == 2}">
				num은 2입니다.<br>
			</jstlc:when>
			<jstlc:otherwise>
				num은 1도 아니고 2도 아닙니다.<br>
			</jstlc:otherwise>
		</jstlc:choose>
		
		<br>
		
		<h2>forEach - 반복문</h2>
		
		<jstlc:forEach var="cnt" begin="1" end="5" step="3">
			<jstlc:if test="${cnt % 2 == 0}">
				반복 ${cnt},
			</jstlc:if>
		</jstlc:forEach>
		
		<br>
		
		<%
			ArrayList<String> list = new ArrayList<>();
			list.add("a1");
			list.add("b2");
			list.add("c3");
			request.setAttribute("list", list);
		%>
		
		<!-- 기본적인 for loop -->
		<jstlc:forEach var="j" begin="0" end="${list.size() - 1}">
			${list.get(j)}, 
		</jstlc:forEach>
		
		<br>
		
		<!-- 실제 우리가 아는 방식으로 동작하는 for loop -->
		<jstlc:forEach var="v" items="${list}">
			${v}, 
		</jstlc:forEach>
		
		<hr>
		
		<h2>forTokens - 토큰나이저</h2>
		
		<jstlc:set var="phone" value="010-1234-5678" />
		<jstlc:forTokens var="t" items="${phone}" delims="-">
			${t}, 
		</jstlc:forTokens>
		
		<br>
		
		<h2>out - 출력</h2>
		
		<jstlc:set var="d" value="<marquee>문자</marquee>" />
		
		EL출력: ${d} <br>
		JSTL out출력: <jstlc:out value="${d}" />
		<!-- out으로 출력을 하게되면 태그가 작동하지 않는다(먹히지 않음) -->
		<!-- value에 <>가 각각 &lt, &rt로 변환되어 저장된다 -->
		
		
	</body>
</html>



























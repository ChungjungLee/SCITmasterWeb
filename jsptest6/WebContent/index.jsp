<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>로그인/게시판 예제</title>
	</head>
	<body>
	
		<%-- scriptlet 주석입니다 --%>
		<core:if test="${id == null}">
		<%-- 알아서 pageScope부터 applicationScope까지 id를 찾는다 --%>
			<ul>
				<li>
					<a href="member?action=joinForm">회원 가입</a>
				</li>
				<li>
					<a href="member?action=loginForm">로그인</a>
				</li>
			</ul>
		</core:if>
		
		<core:if test="${id != null}">
			<ul>
				<li>
					<a href="member?action=logout">로그아웃</a>
				</li>
				<li>
					<a href="member?action=updateForm">개인정보 수정</a>
				</li>
				<li>
					<a href="board?action=writeForm">글쓰기</a>
				</li>
			</ul>
		</core:if>
	</body>
</html>






























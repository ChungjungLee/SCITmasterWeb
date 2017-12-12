<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>${board.title}</title>
		
		<script type="text/javascript">
			function openCheckDelete() {
				window.open('checkDelete.jsp', 'checkDelete', 
						'top=200,left=400,width=300,height=300');
			}
			
			function deleteBoard() {
				location.href="board?action=delete&boardnum=${board.boardnum}&page=${page}";
			}
		</script>
		
		<style type="text/css">
			#board {
				margin: 0 auto;
				width: 500px;
				border: 1px solid black;
				border-collapse: collapse;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<core:if test="${board.id == sessionScope.id}">
			<a href="board?action=reviseform&boardnum=${board.boardnum}">수정</a>
			<a href="javascript:openCheckDelete()">삭제</a>
		</core:if>
		
		<table id="board" border="1">
			<tr>
				<td>${board.boardnum}</td>
				<td colspan="2"><core:out value="${board.title}"/></td>
			</tr>
			<tr>
				<td><core:out value="${board.id}"/></td>
				<td>${board.inputdate}</td>
				<td>${board.hits}</td>
			</tr>
			<tr>
				<td colspan="3"><core:out value="${board.content}"/></td>
			</tr>
		</table>
	</body>
</html>
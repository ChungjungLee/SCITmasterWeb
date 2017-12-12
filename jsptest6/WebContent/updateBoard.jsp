<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>${board.title}</title>
		
		<script type="text/javascript">
			function back() {
				location.href="board?action=read&board=${board.boardnum}";
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
		<form action="board" method="POST">
			<table id="board" border="1">
				<tr>
					<td>${board.boardnum}</td>
					<td colspan="2">
						<input type="text" value="${board.title}" name="title">
					</td>
				</tr>
				<tr>
					<td><core:out value="${board.id}"/></td>
					<td>${board.inputdate}</td>
					<td>${board.hits}</td>
				</tr>
				<tr>
					<td colspan="3">
						<textarea rows="10" cols="50" name="content">${board.content}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="submit" value="저장">
						<input type="hidden" name="action" value="revise">
						<input type="hidden" name="formerboard" value="${board}">
						<input type="button" value="돌아가기" onclick="javascript:back()">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
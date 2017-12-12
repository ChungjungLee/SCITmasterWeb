<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>게시판 읽기</title>
		
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
		
		<core:if test="${sessionScope.id != null}">
			<p><a href="board?action=writeForm">글쓰기</a></p>
		</core:if>
		
		<table id="board" border="1">
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
			
			<core:if test="${list == null || list.isEmpty()}">
				<tr>
					<td colspan="5">게시글이 없습니다.</td>
				</tr>
			</core:if>
			
			<core:if test="${list != null && list.size() > 0}">
				<core:forEach var="board" items="${list}">
					<tr>
						<td>
							${board.boardnum}
						</td>
						<td>
							<a href="board?action=read&boardnum=${board.boardnum}&page=${page}">
								<core:out value="${board.title}"/>
							</a>
						</td>
						<td>
							<core:out value="${board.id}"/>
						</td>
						<!-- 
						그냥 EL 표현식을 사용해서 출력하게 되면 HTML 태그로 인식을 하는 경우가 있으므로
						jstl의 out tag를 이용해야 한다
						-->
						<td>
							${board.inputdate}
						</td>
						<td>
							${board.hits}
						</td>
					</tr>
				</core:forEach>
			</core:if>
			
		</table>
		
		<!-- 페이지 이동하는게 필요 -->
		
		
		<core:if test="${1 < page}">
			<a href="board?action=list&page=${page - 1}">이전 페이지</a>
		</core:if>
		
		<core:if test="${page < totalpage}">
			<a href="board?action=list&page=${page + 1}">다음 페이지</a>
		</core:if>
	</body>
</html>



































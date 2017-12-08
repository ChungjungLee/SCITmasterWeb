<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="vo.Article" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>게시판 페이지</title>
		<!-- bootstrap을 위한 style sheet link -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
		<!-- icon font를 위한 style sheet link -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- 개인적으로 제작한 CSS -->
		<!-- 경로 지정에 유의해야 할 듯 -->
		<link href="css/board.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		
			<div class="outerdiv">
				<div class="title">
					<label class="titleheader">게 시 판</label>
				</div>
				
				<div class="articletable">
					
					<div class="headerrow">
						<div class="cell headercell article-num">
							<label>글 번 호</label>
						</div>
						<div class="cell headercell article-title">
							<label>제 목</label>
						</div>
						<div class="cell headercell article-author">
							<label>작 성 자</label>
						</div>
						<div class="cell headercell article-view">
							<label>조 회 수</label>
						</div>
						<div class="cell headercell article-date">
							<label>작 성 일</label>
						</div>
					</div>
					
					<core:set var="articleList" value="<%=(List<Article>)request.getAttribute(\"articleList\")%>" />
					<core:choose >
						<core:when test="${articleList.isEmpty()}">
							<div class="arcitlerow">
								<label>저장된 글이 없습니다.</label>
							</div>
						</core:when>
						<core:otherwise>
							<!-- jstl의 문법을 이용해서 선언한 변수들을 사용하려면 반드시 $ 기호를 사용해야 함을 잊지 말것 -->
							<core:forEach var="article" items="${articleList}">
								<div class="articlerow">
									<div class="cell article-num">
										<label>${article.getNum()}</label>
									</div>
									<div class="cell article-title">
										<a href="readone?num=${article.getNum()}">${article.getTitle()}</a>
									</div>
									<div class="cell article-author">
										<label>${article.getAuthor()}</label>
									</div>
									<div class="cell article-view">
										<label>${article.getViews()}</label>
									</div>
									<div class="cell article-date">
										<label>${article.getIndate()}</label>
									</div>
								</div>
							</core:forEach>
						</core:otherwise>
					</core:choose>
					
				</div>
				
				<div class="paginationdiv">
					<nav aria-label="Page navigation example" class="paginationnav">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>
				</div>
				
				<div class="searchbar">
					<select>
						<option value="title">제  목</option>
						<option value="author">작성자</option>
						<option value="number">글번호</option>
					</select>
					<input type="text" placeholder="검색할 단어">
					<input type="button" value="&#xf002;">
				</div>
			</div>
		
	</body>
</html>
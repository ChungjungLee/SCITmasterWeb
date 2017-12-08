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
		<!-- bootstrap을 위한 style sheet link -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
		<!-- icon font를 위한 style sheet link -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- 개인적으로 제작한 CSS -->
		<link href="css/readOneArticle.css" rel="stylesheet" type="text/css">
		
		<title>글 읽기 페이지</title>
		<script type="text/javascript">
			function gotoBoard() {
				location.href = "readarticle";
			}
		</script>
	</head>

	<body>
		<core:set var="article" value="<%=(Article) request.getAttribute(\"article\") %>"/>
		
		<div class="outerdiv">
			<div class="titlerow"> 
				<label>${article.getTitle()}</label>
			</div>
			
			<div class="miscrow"> 
				<div class="cell viewcell">
					<label>${article.getViews()}</label>
				</div>
				
				<div class="cell authorcell">
					<label>${article.getAuthor()}</label>
				</div>
				
				<div class="cell indatecell">
					<label>${article.getIndate()}</label>
				</div>
			</div>
			
			<div class="textrow"> 
				<label>${article.getText()}</label>
			</div>
			
			<div> 
				<button onclick="javascript:gotoBoard()">게시판으로</button>
			</div>
		</div>

	</body>
</html>

























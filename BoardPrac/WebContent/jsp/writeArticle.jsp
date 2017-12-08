<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript">
			function check() {
				alert('validation start');
				
				// javascript의 null 비교는 주의해야 한다!
				var eText = document.getElementById('title');
				if (eText.value == '') {
					alert("제목을 입력해주세요");
					return false;
				}
				
				var eAuthor = document.getElementById('author');
				if (eAuthor.value == '') {
					alert("작성자를 입력해주세요");
					return false;
				}
				
				var eTextarea = document.getElementById('textarea');
				if (eTextarea.value == '') {
					alert("글 내용을 입력해주세요");
					return false;
				}
				
				return true;
			}
		</script>
		<title>게시글 등록</title>
	</head>
	<body>
		<form action="../writearticle" method="POST" onsubmit="return check();">
			제목: <input type="text" id="title" name="title">
			
			<br>
			
			작성자: <input type="text" id="author" name="author">
			
			<br>
			
			글 내용: <textarea id="textarea" name="textarea" rows="10" cols="50"></textarea>
			
			<br>
			
			<input type="submit" value="등록">
		</form>
	</body>
</html>
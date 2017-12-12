<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>삭제 확인</title>
		
		<script type="text/javascript">
			function deleteboard() {
				opener.deleteBoard();
				this.close();
				return true;
			}
			
			function back() {
				this.close();
				return false;
			}
		</script>
	</head>
	<body>
		<p>해당 게시글을 삭제하시겠습니까?</p>
		<input type="button" onclick="deleteboard()" value="네">
		<input type="button" onclick="back()" value="아니오">
	</body>
</html>
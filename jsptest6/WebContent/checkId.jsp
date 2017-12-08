<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>중복확인</title>
		
		<script type="text/javascript">
			function validation() {
				
			}
			
			function useId(id) {
				// 원래 창(opener)은 팝업 창을 열어준 곳을 말한다 
				var e = opener.document.getElementById('id');
				e.value = id;
				
				// 본인 창(window/this)
				window.close();
			}
		
		</script>
	</head>
	<body>
		<form action="member" method="POST" onsubmit="validation();">
			<input type="text" id="id" name="id" placeholder="ID">
			<input type="submit" value="중복확인">
			<input type="hidden" name="action" value="checkId">
		</form>
		
		<br><br><br>
		
		<core:if test="${check}">
			
			<core:if test="${duplicated}">
				<p>중복입니다.</p>
			</core:if>
			
			<core:if test="${duplicated == false}">
				<p>사용 가능합니다.</p>
				<input type="button" onclick="useId('${param.id}')" value="사용하겠습니다.">
			</core:if>
			
		</core:if>
		
	</body>
</html>













<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 테스트 03</title>
		<script></script>
	</head>
	<body>
		<h1>JSP 테스트 03</h1>
		
		<!-- 오늘 날짜 추출하기 with Calendar Class -->
		<%
			Calendar c = Calendar.getInstance();
			int curYear = c.get(Calendar.YEAR);
			int curMonth = c.get(Calendar.MONTH) + 1;
			int curDay = c.get(Calendar.DATE);
			int curHour = c.get(Calendar.HOUR_OF_DAY);
			int curMinute = c.get(Calendar.MINUTE);
			int curSecond = c.get(Calendar.SECOND);
			int curDayOfWeek = c.get(Calendar.DAY_OF_WEEK);
			
			String[] dayOfWeek = {
				"일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"
			};
			
			ArrayList<String> dayOfWeekList = new ArrayList<>();
			dayOfWeekList.add("일요일");
			dayOfWeekList.add("월요일");
			dayOfWeekList.add("화요일");
			dayOfWeekList.add("수요일");
			dayOfWeekList.add("목요일");
			dayOfWeekList.add("금요일");
			dayOfWeekList.add("토요일");
			
			ArrayList<String> dayOfWeekList2 = new ArrayList<>(Arrays.asList(dayOfWeek));
		%>
		
		<%=curYear %>년 <%=curMonth %>월 <%=curDay %>일 <%=dayOfWeekList.get(curDayOfWeek-1) %> <%=curHour %>시 <%=curMinute %>분 <%=curSecond %>초
		
		<br><br><br>
		
		<!-- 연도 선택창 만들기 -->
		<select id="year">
			<%
				for (int year = 1900; year < 2018; year++) {
					if (year == curYear) {
			%>
						<option selected><%=year %></option>
			<%		
					} else {
			%>
						<option><%=year %></option>
			<%
					}
				}
			%>
		</select>
		
		<!-- 연도 선택창 만들기 JS를 이용 -->
		<script>
			var year = document.getElementById('year');
			
			var html = "";
			for (int i = 1900; i < 2018; i++) {
				html += "<option>" + i + "</option>";
			}
			
			year.innerHTML = html;
		</script>
		
		<!-- 월 선택창 -->
		<select id="month">
			<%
				for (int month = 1; month < 13; month++) {
					if (month == curMonth) {
			%>
						<option selected><%=month %></option>
			<%
					} else {
			%>
						<option><%=month %></option>
			<%
					}
				}
			%>
		</select>
		
		<!-- 일 선택창 -->
		<select id="day">
			<%
				for (int day = 1; day < 32; day++) {
					if (day == curDay) {
			%>
						<option selected><%=day %></option>
			<%
					} else {
			%>
						<option><%=day %></option>
			<%
					}
				}
			%>
		</select>
	</body>
</html>
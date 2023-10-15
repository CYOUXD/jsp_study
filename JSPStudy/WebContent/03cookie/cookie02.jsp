<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//show 쿠키 값이 있으면 출력 없으면 "쿠키가 없습니다" 출력
    Cookie[] arr = request.getCookies();
    String date = null;
    if(arr != null) {
    	for(int i=0; i<arr.length; i++) {
			//내가 원하는 show 쿠키인지 확인(다른 곳에서 만든 쿠키가 남아 있을 수도 있음)
			if(arr[i].getName().equals("date")) {
				date = arr[i].getValue();
			}
    	}
    }
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 생성 날짜 정보 출력</title>
	</head>
	<body>
		<%
		if(date == null) {
			%>
			쿠키 값이 없습니다.
			<%
		}else {
			%>
			마지막 접속 날짜 : <%=date %>
			<%
		}
		%>
	</body>
</html>
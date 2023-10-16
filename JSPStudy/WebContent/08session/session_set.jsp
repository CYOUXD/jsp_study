<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    session.setAttribute("id", "apple");
    session.setAttribute("pw", "abc123");
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session 값 전달</title>
	</head>
	<body>
		<a href="session_get.jsp">세션 확인하기</a>
	</body>
</html>
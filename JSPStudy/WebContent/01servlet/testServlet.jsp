<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 및 Servlet 연동</title>
	</head>
	<body>
		<a href="testJSP.jsp">testJSP로 이동</a><br>
		<a href="../apple">appleServlet으로 이동</a><br>
		<a href="../orange">orangeServlet으로 이동</a>
		<!-- 
			현재 실행 위치는 01servlet이므로 한칸 위로 올라가게 되면 웹 실행 최상위인 Webcontent 폴더가 된다.
			서블렛은 경로를 숨기기 위해 최상위에서 이동해야 하므로 "../서블렛이름"이 경로가 된다.
		 -->
	</body>
</html>
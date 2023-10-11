<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>directive include</title>
	</head>
	<body>
		<!-- include_header.jsp -->
		<%@include file="include_header.jsp" %>
		<hr>
		<h1>본문의 내용이 있는 Section을 불러오기</h1>
		<%@include file="include_section.jsp" %>
		<hr>
		<!-- include_footer.jsp -->
		<%@include file="include_footer.jsp" %>
	</body>
</html>
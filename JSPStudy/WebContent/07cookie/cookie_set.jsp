<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //쿠키는 내장 객체가 아니므로 객체를 생성해야 한다.
    //1. 쿠키 객체 생성 : new Cookie(쿠키 이름, 쿠키 값)
    Cookie idCoo = new Cookie("user_id", "aaa123");
    Cookie nameCoo = new Cookie("user_name", "쿠키");
    
    //쿠키는 기본 시간이 정해지지 않았으므로 시간을 설정해줘야 한다.
    //2. 쿠키 시간 설정
    idCoo.setMaxAge(60*60);
    nameCoo.setMaxAge(20);
    
    //3. 응답 객체에 쿠키 탑재
    response.addCookie(idCoo);
    response.addCookie(nameCoo);
    
    
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 값 확인(cookie_get.jsp)</title>
	</head>
	<body>
		<a href="cookie_get.jsp">쿠키 값 확인하기</a>
	</body>
</html>
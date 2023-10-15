<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    	웹페이지 접근 시간을 xxxx년 xx월 xx일 형태로 생성
    	날짜 형식을 show라는 이름의 쿠키로 생성
    	show 쿠키를 cookie02.jsp에서 확인하기
     -->
     <%
     //1. 날짜 객체 생성
     Date date = new Date();
     SimpleDateFormat time = new SimpleDateFormat("yyyy년MM월dd일"); 
     //mm이 아니라 MM으로 써야 함! 그렇지 않으면 분 정보가 출력 됨
     
     //2. 쿠키 객체 생성, 데이터 저장
     Cookie show = new Cookie("date", time.format(date));
     
     //3. 쿠키 시간 설정
     show.setMaxAge(30);
     
     //4. 데이터 전송 객체에 쿠키 저장
     response.addCookie(show);
     
     %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 생성 날짜 정보 저장</title>
	</head>
	<body>
		<a href="cookie02.jsp">쿠키에 저장 된 값을 확인하기</a>
	</body>
</html>
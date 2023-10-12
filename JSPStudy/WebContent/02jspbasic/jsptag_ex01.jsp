<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    //선언자와 스트립틀릿의 차이
    //선언자 : 변수나 메서드 선언시 사용(빈즈로 대체되어 사용되어지므로 권장하지 않음)
    //멤버 변수는 전역 변수의 성질을 가지면서 전체 어플리케이션에 영향을 줌
    int total = 0;
    
    public int randomNum() {
    	Random ran = new Random();
    	int num = ran.nextInt(10);
    	return num;
    }
    %>
    <%
    //지역 변수는 페이지가 실행 될 때마다 발생하는 코드
    //스크립틀릿 : 모든 자바 코드 기술 가능
    int each = 0;
    total++;
    each++;
    
    int rn = randomNum();    
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>선언자와 스트립틀릿의 차이</title>
	</head>
	<body>
		<p>
			페이지 누적 요청(선언자) : <%=total %><br>
			페이지 개별 요청(스트립틀릿) : <%=each %><br>
			오늘의 숫자 : <%=rn %>
		</p>
	</body>
</html>
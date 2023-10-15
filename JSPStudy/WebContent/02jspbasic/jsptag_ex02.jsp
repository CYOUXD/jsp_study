<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    int total; //브라우저가 꺼질 때까지 유지
    
    //메서드는 여기서만 생성 가능. 메서드를 만들거면 여기서 랜덤 값을 만드는 메서드 생성
    
    %>
    <%
    total++; //실행할 때마다 1누적
    Random random = new Random();
    int ran = random.nextInt(8)+2;
    
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 태그 연습 2</title>
	</head>
	<body>
		<!-- 
		1. 페이지 누적 요청 : n
		2. 10번째 방문자마다 기프티콘을 드립니다. : 10, 20, 30...번째 당첨!
		3. 랜덤 구구단 : 이번 랜덤 구구단은 n단 입니다.
		 -->
		페이지 누적 요청 : <%=total %><br>
		10번째 방문자마다 기프티콘을 드립니다.<br>
		<%
		if(total%10 == 0) {
			%>
			당첨되었습니다!
			<%
		}
		%><br>
		
		<h2>랜덤 구구단</h2>
		이번 랜덤 구구단은 <%=ran %>단 입니다.<br>
		<%
		for(int i=1; i<=9; i++) {
			%>
			<%=ran %> x <%=i %> = <%=ran*i %><br>
			<%
		}
		%>
	</body>
</html>
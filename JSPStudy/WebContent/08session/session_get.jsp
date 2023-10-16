<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //session의 getAttribute는 object로 반환한다.
    String id = (String)session.getAttribute("id");
    String pw = (String)session.getAttribute("pw");
    
    //세션 유지 시간 확인
    int time = session.getMaxInactiveInterval();
    
    //세션 유지 시간 변경
    session.setMaxInactiveInterval(3600);
    int time2 = session.getMaxInactiveInterval();
    
    //특정 세션 삭제
    session.removeAttribute("id");
    
    //모든 세션 삭제
    session.invalidate();
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session 값 출력</title>
	</head>
	<body>
		아이디 : <%=id %><br>
		비밀번호 : <%=pw %><br>
	 	유지시간(변경전) : <%=time %><br>
		유지시간(변경후) : <%=time2 %>
	</body>
</html>
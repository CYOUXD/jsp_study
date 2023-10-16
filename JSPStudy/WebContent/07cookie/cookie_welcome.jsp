<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] arr = request.getCookies();
    String name = null;
    if(arr != null) {
    	for(int i=0; i<arr.length; i++){
    		if(arr[i].getName().equals("user_id")) {
    			name = arr[i].getValue();
    		}
    	}
    }
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 로그인 확인</title>
	</head>
	<body>
		<%=name %>님 확인합니다.
	</body>
</html>
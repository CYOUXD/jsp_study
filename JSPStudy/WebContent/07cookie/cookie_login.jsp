<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //만약 쿠키가 남아 있어서 아이디 정보가 있다면 id 칸에 저장된 id를 넣어주기
    Cookie[] idChk = request.getCookies();
    String id = null;
    if(idChk != null) {
    	for(int i=0; i<idChk.length; i++) {
    		if(idChk[i].getName().equals("id_chk")) {
    			id = idChk[i].getValue();
    		}
    	}
    }
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 아이디 기억하기</title>
	</head>
	<body>
		<h2>쿠키 사용하기</h2>
		<form action="cookie_login_ok.jsp" method="post">
			아이디 : <input type="text" name="id" size="10" value="<%=id %>"><br>
			비밀번호 : <input type="password" name="pw" size="10"><br>
			<input type="submit" value="로그인">
			<input type="checkbox" name="idChk" value="y">아이디 기억하기
		</form>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	/*
	1. 아이디와 비밀번호를 coolie_login.jsp로 부터 받음.
	2. id=aaa이고, pw=111 라면 로그인 성공이라고 간주
		(user_id, id) 값을 가지는 쿠키를 생성
	3. 쿠키 문법 사용하여 쿠키를 전송. cookie_welcome.jsp로 이동
	4. 아이디와 비밀번호가 틀렸다면 cookie_login.jsp로 이동
	5. welcome 페이지에서는 cookie 값을 꺼내서 "id님 환영합니다."가 출력됩니다.
	*/
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idChk = request.getParameter("idChk");
	
	if(id.equals("aaa") && pw.equals("111")) {
		Cookie idCoo = new Cookie("user_id", id);
		idCoo.setMaxAge(30);
		response.addCookie(idCoo);		
		
		//idChk가 체크되면 id 저장용 쿠키 생성
		if(idChk != null) {
			Cookie check = new Cookie("id_chk", id);
			check.setMaxAge(30);
			response.addCookie(check);
		}
		response.sendRedirect("cookie_welcome.jsp");
	}else {
		response.sendRedirect("cookie_login.jsp");
	}
	
	%>
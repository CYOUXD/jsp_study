<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	//전달 받은 쿠키를 사용
	
	//쿠키 사용하기 - 쿠키는 요청 시 자동으로 전송되고 request에 자동 저장 됨
	Cookie[] arr = request.getCookies();
	
	if(arr != null) {
		for(int i=0; i<arr.length; i++) {
			out.println(arr[i].getName()+"<br>"); //쿠키 이름
			out.println(arr[i].getValue()+"<br>"); //쿠키 값
		}
	}
	%>
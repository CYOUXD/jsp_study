<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    //선언자에 선언된 변수 및 메서드는 **전역의 의미로 사용됨(멤버변수, 인스턴스 변수)
    
    int num = 10;
    String str = "변수 선언";
    
    ArrayList<String> list = new ArrayList<>();
    
    public int method(int a, int b) {
    	System.out.println("메서드 선언");
    	return a+b;
    }
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>선언자</title>
	</head>
	<body>
		<%
		out.println("num 값 : "+num+"<br>");
		out.println("str 값 : "+str+"<br>");
		out.println("10과 20의 합 : "+method(10, 20));
		%>
		<hr>
		표현식으로 표현<br>
		num 값 : <%=num %><br>
		str 값 : <%=str %><br>
		10과 20의 합 : <%=method(10, 20) %><br>
	</body>
</html>
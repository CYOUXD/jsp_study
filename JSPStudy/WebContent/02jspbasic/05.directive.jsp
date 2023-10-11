<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    List<String> list = new ArrayList<>();
    list.add("홍길동");
    list.add("홍길숙");
    
    Map<Integer, String> map = new HashMap<>();
    map.put(1, "홍길동");
    map.put(2, "홍길숙");
    
    Random ran = new Random();
    int num = ran.nextInt(10);
    
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
    String now = sdf.format(date);
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>표현식</title>
	</head>
	<body>
		리스트의 크기 : <%=list.size() %><br>
		리스트의 형태 : <%=list.toString() %><br>
		
		맵의 크기 : <%=map.size() %><br>
		맵의 형태 : <%=map.toString() %><br>
		
		랜덤 값 : <%=num %><br>
		날짜 : <%=now %>
	</body>
</html>
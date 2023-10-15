<%@page import="java.util.Collections"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    List<Integer> list = new ArrayList<>();
    Random ran = new Random();
    while(list.size() < 6){
    	int num = ran.nextInt(44)+1;
    	if(!list.contains(num)) {
	    	list.add(num);    		
    	}
    }
    Collections.sort(list);
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsptag_ex03 로또 번호 출력하기</title>
	</head>
	<body>
	<!-- 리스트를 사용하여 로또 숫자 추출하기 : 중복x, 오름차순 정렬 -->
	<%=list.toString() %>
	</body>
</html>
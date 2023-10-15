<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	%>
	<%--
	액션 태그로 빈(객체) 사용 법
	id = 생성할 객체 명
	class = 객체 생성에 사용할 VO 클래스의 경로
	scope = 생성한 빈의 사용 범위
	 --%>
	<!-- user1 객체 생성 -->
	<jsp:useBean id="user1" class="com.bean.User" scope="page" />
	<!-- = "User user1 = new User();" -->
	<!-- page 범위 : 현재 보여지는 페이지까지만 사용 -->
	
	<!-- User로 만든 name="user1"객체의 property="id" 변수에 value 값 저장-->
	<%-- 
	<jsp:setProperty property="id" name="user1" value="<%=id %>" />
	<jsp:setProperty property="pw" name="user1" value="<%=pw %>"/>
	<jsp:setProperty property="name" name="user1" value="<%=name %>"/>
	<jsp:setProperty property="email" name="user1" value="<%=email %>"/>
	--%>
	<jsp:setProperty property="*" name="user1"/>
	
	<jsp:getProperty property="id" name="user1" />
	<jsp:getProperty property="pw" name="user1"/>
	<jsp:getProperty property="name" name="user1"/>
	<jsp:getProperty property="email" name="user1"/>
	
	<%-- 이건 안됨!
	<jsp:getProperty property="*" name="user1"/>
	 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    1. 데이터를 보낼 form이 들어있는 jsp 파일
    2. 데이터를 담아서 객체를 만들어낼 class가 들어 있는 패키지 ->java 파일
    3. bean을 사용할 jsp 파일
    
     -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean_basic.jsp</title>
	</head>
	<body>
		<form action="bean_basic_ok.jsp" method="post">
			아이디 : <input type="text" name="id" size="10"><br>
			비밀번호 : <input type="password" name="pw" size="10"><br>
			이름 : <input type="text" name="name" size="10"><br>
			이메일 : <input type="text" name="email" size="10"><br>
			<input type="submit" value="확인">
		</form>
	</body>
</html>
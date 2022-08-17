<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Cookie[] arr = request.getCookies();

String ch = "";
if(arr != null){//쿠키가 존재하면 
	for(Cookie c:arr ){
		if(c.getName().equals("check")){
			ch = c.getValue();
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--쿠키는 개념을 이해하시오  
	2.check크키값을 확인해서value값에 check쿠키의 값을 저장
	-->
	
	
	<form action="cookie_ex01_result.jsp" method="post">
	아이디:<input type="text" name="id"><br>
	비밀번호:<input type="password" name="pw"><br>
	<input type="submit" value="로그인">
	<input type="checkbox" name="check">아이디 기억하기
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--사용자에게 보여지는 화면  -->
	<!--"http://Localhost:8181/JspBasic/request/req_ex02.jsp"-->
<form action="req_ex02.jsp" method="get">
아이디<input type="text" name="id"><br>
비번<input type="password" name="pw"><br>
<button type="submit">get방식</button>
</form>
</body>
</html>
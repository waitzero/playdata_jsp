<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//<!--세션이 2개 만들어짐  -->
session.setAttribute("user_id", "xxx123");
session.setAttribute("user_name", "홍길동");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--basic_ok로 이동  -->
<a href="session_basic_ok.jsp"></a>
</body>
</html>


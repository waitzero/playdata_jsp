<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String user_id= (String)session.getAttribute("user_id");
String user_nick = (String)session.getAttribute("user_nick");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
user_id 세션값<%=user_id %><br>
user_nick 세션값<%=user_nick %><br>
	<a href="session_login.jsp">로그아웃</a>

</body>
</html>
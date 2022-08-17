<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*세션값을 가져와서 string으로 형변환  */
	//세션의 사용
	String user_id= (String)session.getAttribute("user_id");
	String user_name = (String)session.getAttribute("user_name");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>세션값</h4>
	
	<%=user_id %>
	<%=user_name %>
	
	<a href="session_basic_remove.jsp">특정 세션 삭제</a>
	<a href="session_basic_invalid.jsp">세션 전부 삭제</a>
</body>
</html>
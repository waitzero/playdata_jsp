<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*세션값을 가져와서 특정 값만 삭제  */
	session.removeAttribute("user_name");
	String user_name=(String)session.getAttribute("user_name");
	String user_id = (String)session.getAttribute("user_id");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
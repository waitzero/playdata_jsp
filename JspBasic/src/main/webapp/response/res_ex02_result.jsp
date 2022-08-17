<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
if(id.equals("abc1234")&& pw.equals("asd123")){
	response.sendRedirect("res_ex02_welcome.jsp");
}else{
	response.sendRedirect("res_ex02_fail.jsp");
}
%>
</head>
<body>

</body>
</html>
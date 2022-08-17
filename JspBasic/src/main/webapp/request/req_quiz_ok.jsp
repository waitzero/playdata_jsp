<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String[] intro = request.getParameterValues("intro");
    String major= request.getParameter("major");
    String region = request.getParameter("region");
    String topic = request.getParameter("topic");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--checkbox, radio, select태그는 value속성에 실제 값을 입력한다.
	
  -->
<%=id %><br>
<%=pw %><br>
<%=Arrays.toString(intro)%><br>
<%=major%><br>
<%=region%><br>
<%=topic %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String id= request.getParameter("id");
    String pw= request.getParameter("pw");
    String nick= request.getParameter("nick");
	/*
	1. 아이디, 비밀번호, nick을 받습니다.
	2. 아이디 비밀번호가 동일하면 (user_id, id)의 세션생성
	(user_nick, 닉네임)을 세션을 생성
	
	session_welcome로 이동해서 화면에 "id님 환영합니다"를 출력합니다.
	틀린경우는 로그인페이지로 리다이렉트 처리해주세요.
	
	session_welcome페이지에서는 a태그를 이용해서 로그아웃 기능을 만들어주세요
	
	*/
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(id.equals("abc")&&pw.equals("123")){
	session.setAttribute("user_id", id);
	session.setAttribute("user_nick", nick);
	response.sendRedirect("session_welcome.jsp");
}else{
	response.sendRedirect("session_login.jsp");
}
%>
</body>
</html>
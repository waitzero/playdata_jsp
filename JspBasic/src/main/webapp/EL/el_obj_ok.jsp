<%@page import="com.simple.bean.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //이 페이지는 vo가 넘어와 있다
    /*el태그 쓰면 색략 가능
    //포워드로 넘어온값 확인
    UserVo vo=(UserVo)request.getAttribute("vo");
    String addr = vo.getAddr();
    String id = vo.getId();
    String pw = vo.getPw();
    String name = vo.getName();
    */
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${vo.id }<br>
	${vo.addr }<br>
	${vo.pw }<br>
	${vo.name }<br>
	<!-- 세션안에 들어있는 값 sessionScope를 붙여주는 편이 좋습니다. -->
	${sessionScope.aaa }
</body>
</html>
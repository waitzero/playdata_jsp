<%@page import="com.simple.bean.ScoreVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   	ScoreVo vo = (ScoreVo)request.getAttribute("vo");
    String name = vo.getName();
	int sum = vo.getSum();
	double avg = vo.getAvg();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=name %>님의 총점과 평균은<%=sum %>과<%=avg %>입니다.
</body>
</html>
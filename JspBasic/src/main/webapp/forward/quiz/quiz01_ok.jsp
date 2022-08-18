<%@page import="com.simple.bean.ScoreVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%
  request.setCharacterEncoding("utf-8");
  	String name = request.getParameter("name");
  	String kor = request.getParameter("kor");
  	String math = request.getParameter("math");
  	String eng = request.getParameter("eng");
  	int k = Integer.parseInt(kor);
  	int m = Integer.parseInt(math);
  	int e = Integer.parseInt(eng);
  	/*
	1. 폼태그를 처리할 수 있는 빈을 선언합니다. name, kor, eng, math
	2. 폼값을 받아서 평균과 총점을 구합니다.
	3. quiz01_result페이지로 이동해서 
		학생정보와 평균, 총점을 모두 출력하세요.
	
	조건: session (x)
	*/
	int sum = k+m+e;
  	double avg = sum/3;
  	
  ScoreVo vo = new ScoreVo(name, k, e, m, sum, avg);
  request.setAttribute("vo", vo);
  request.getRequestDispatcher("quiz01_result.jsp").forward(request, response);
  
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
<%@page import="com.simple.bean.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");

System.out.println(id);
System.out.println(pw);

//데이터 베이스 에서 조회~~>새로운 데이터를 가지고 나오는 작업

String newData = "홍길동";


//리퀘스트에 데이터를 강제로 저장

UserVo vo = new UserVo("aaa123", "1234", "이순신", "서울");
request.setAttribute("vo", vo);
request.setAttribute("newData", newData);//졸라 중요****************************************************

//포워드 이름
request.getRequestDispatcher("forward_data03.jsp").forward(request, response);
%>
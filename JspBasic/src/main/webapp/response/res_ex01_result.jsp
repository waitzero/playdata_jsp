<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //순수한 자바코드가 작성되는것, 즉 servlet가능.
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    int a = Integer.parseInt(age);
    //age가 20세 전후여부에 따라서 다른 페이지 이동
    if(a>=20){
    response.sendRedirect("res_ex01_ok.jsp");
    }else{
    	 response.sendRedirect("res_ex01_no.jsp");
    }
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
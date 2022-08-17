<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String cm = request.getParameter("cm");
    String kg = request.getParameter("kg");
  	double c = Double.parseDouble(cm);
  	double k =  Double.parseDouble(kg);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>님의 BMI지수는
	<%double b = k/( c/100 * c/100);
		if(b>=25){
			out.println("과체중입니다");
		}else if(b<=18){
			out.println("저체중입니다");
		}else{
			out.println("정상입니다.");
		}
		
		%>
		</body>
</html>
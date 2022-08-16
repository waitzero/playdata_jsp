<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	//순수한 자바코드
	int num = 0;
	if(num ==0){
		out.println("참입니다");//화면으로 출력
	}else{
		System.out.println("거짓입니다");//콘솔로 출력
	}
%> --%>
<%-- <%
	int num = 0;
	if(num == 0){%>
		<b>참데스요</b>
	<%}else{ %>
		<b>거짓데스요</b>W
<%	}%> --%>
<h3>a태그를 20개 이용해서 생성</h3>
	<% 
	for(int i =0; i<=20; i++){%>
	<a href="#">a태그값</a>
	<%}%>
	
	<h3>표현식</h3>
	<%
		int num2 =10;
		String str = "안녕하세요";
	%>
	num2의 값: <%=num2 %><br>
	str의 값: <%=str %><br>
</body>
</html>
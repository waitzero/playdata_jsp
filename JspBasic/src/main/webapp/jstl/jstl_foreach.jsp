<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<!--일반 for, 향상된 for  -->
		<%--
		<%
		int sum =0;
			for(int i =0; i<=20; i++){
				sum+=1;
			}
		%>
<%=sum %>
 --%>
 <!--step은 1일경우에 생략가능  -->
	<c:set var="sum" value="0"/>
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:set var="sum" value="${sum + i }"/>
	</c:forEach>
	${sum}
	<br>
	
	<!--  구구단 3단 출력 -->
	<c:set var="gugu" value="3"/>
	<c:forEach var="i" begin="1" end="9" step="1">
		<c:set var="gugu" value="${3 * i  }"/>
		${gugu }
	</c:forEach>
	<br>
	
	<!-- 모든 구구단 출력  -->
	<c:set var="front_gugu" value="1"/>
	 <c:forEach var="i" begin="1" end="9" step="1">
	 <c:forEach var="j" begin="1" end="9" step="1">
	 ${i}x ${j} = ${ i *j }<br>
	 </c:forEach>
	 </c:forEach>
	 <br>
	 
	 <%--
	 <%
	 int[] arr = new int[]{1,2,3,4,5};
	 for(int a: arr){
		 out.println(a);
	 }
	 %>
	 --%>
	 
	 <c:set var="arr" value="<%= new int[] {1,2,3,4,5} %>"/>
	 <c:forEach var="a" items="${arr}" varStatus="k">
	 인덱스번호:${k.index },
	 카운터번호:${k.count },
	 ${a }
	 <br>
	 </c:forEach>
</body>
</html>
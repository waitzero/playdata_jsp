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
<c:set var="name" value="홍길동"/>
<c:set var="age" value="20"/>

<!-- jstl elseif문 -->
<c:choose>
	<c:when test="${name eq '홍길동'}">
	홍길동 입니다
	</c:when>
	<c:when test="${name eq'이순신' }">
	생즉필사 사즉필생
	</c:when>
	<c:otherwise>
	<b>난 눈물의 요정</b>
	</c:otherwise>
</c:choose>
<!-- age가 20 이상이면, 성인 미만이면 미선년자 입니다 -->
<c:choose>
<c:when test="${age >20 }">
성인입니다
</c:when>
<c:otherwise>
<b>미성년입니다</b>
</c:otherwise>


</c:choose>

</body>
</html>
﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp" %>
<body>

	
	
	
	
	<div align="center" class="div_center">
		
		
			<h3>로그인페이지</h3>
			<hr>
			<form action="Login_form.user" method="post">
				<input type="text" name="id" placeholder="아이디"><br><br>
				<input type="password" name="pw" placeholder="비밀번호"><br><br>
				<input type="submit" value="로그인" class="btn btn-default">&nbsp;&nbsp;
				<input type="button" value="회원가입" class="btn btn-default" onclick="location.href='경로'">    
			</form>										
		
			
		
	</div>

<%@include file="../include/footer.jsp" %>



</body>
</html>
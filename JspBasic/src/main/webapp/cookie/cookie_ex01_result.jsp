<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String check = request.getParameter("check");
	System.out.println(check);
	//아이디가 abc 비밀번호가 1234라면 로그인 성공이라고 가정
	if(id.equals("abc")&& pw.equals("1234")){
		//아이디에 개한 쿠키를 생성
		Cookie cookie = new Cookie("user_id", id);//키, 값을 지정
		cookie.setMaxAge(1800);
		response.addCookie(cookie);
		
		//check값이 null이 아닐떄
		//check이름으로 id값을 저장하는 쿠키를 생성하시오
		if(check != null){ 
			Cookie cookie2 = new Cookie("check",id);
			cookie2.setMaxAge(1800);
			response.addCookie(cookie2);
			}
		response.sendRedirect("cookie_ex01_ok.jsp");
	}else{
		response.sendRedirect("cookie_ex01.jsp");
	}
	//check값이 null이 아닐떄
			//check이름으로 id값을 저장하는 쿠키를 생성하시오
%>
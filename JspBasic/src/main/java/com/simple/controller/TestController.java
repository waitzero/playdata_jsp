package com.simple.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.test")//확장자 패턴-.test로 끝나는 모든 요청을 맵핑함다
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public TestController() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);//하나의 메서드로ㅓ 연결
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);//하나의 메서드로ㅓ 연결
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("실행됨");
		//요청경료
		String uri = request.getRequestURI();
		//컨텍트패스
		String conpath = request.getContextPath();
		//요청컨택트
		String command = uri.substring(conpath.length());
		System.out.println(command);
		if(command.equals("/controller/delete.test")) {
			//삭제기능
		}else if(command.equals("controller/aaa.test")) {
			//수정기능
		}
	}

}

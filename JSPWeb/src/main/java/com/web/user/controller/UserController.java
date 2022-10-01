package com.web.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.user.service.UserServiceImp;

/**
 * Servlet implementation class UserController
 */
@WebServlet("*.user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//인코딩 설정
		request.setCharacterEncoding("utf-8");
		//요청경로
		String uri = request.getRequestURI();
		//컨텍트패스
		String conpath = request.getContextPath();
		//요청커맨드
		String command = uri.substring(conpath.length());
		System.out.println(command);
		//조인화면 요청
		//mvc는 사소한 요청도 컨트롤러를 타고 나가도록 처리
		//기본적인 이동방식은 forward형식을 사용
		if(command.equals("/user/user_join.user")){
			request.getRequestDispatcher("user_join.jsp").forward(request, response);//나가기
		}else if(command.equals("/user/join_form.user")) {
			//회원가입
			UserServiceImp service = new UserServiceImp();
			int result = service.join(request, response);
			if (result == 0 ) {//아이디 중복
				//회원가입페이지
				response.sendRedirect("user_login.jsp");
			}else {//가입이동
				//로그인페이지로
//				response.sendRedirect("user_login.jsp");
			}
			
		}else if(command.equals("/user/user_login.jsp")){
			//로그인 화면
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
		}else if(command.equals("/user/login_form.user")) {
			/*
			 * 1.서비스 영역의 login메서드를 호출시키고 로그인 작업을 수행
			 * 2.서비스 영역에서는 di, pw를 받는다
			 * 3.DAO로그인 메서드를 생성하고 로그인처리를 수행합니다.
			 * 4.sql=select* from user where id = ? and pw =?
			 * 
			 * 결과가 있다면 UserVo의 회원의 정보를 담아서 컨트롤러로 반환을 받으세요.
			 * 결과가 없다면 null을 가지고 나오면 된다
			 * 
			 * 조건에 맞춰서 로그인 성공사에 main화면으로 이동
			 * 로그인 실패시에는 다시 login페이지로 리다이렉트.
			 */
		}
	}

}

package com.web.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.user.model.UserDAO;
import com.web.user.model.UserVO;

public class UserServiceImp implements UserService{

	@Override
	public int join(HttpServletRequest request, HttpServletResponse response) {
		//파라미터 값을 받는다
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		
		//중복 아이디 검사
		UserDAO dao = UserDAO.getInstance();
		int total = dao.idCheck(id);
		if(total !=0) {
			return 0;//실패의 의미로 0을 반환
		}else {//중복이 없음
		//가입처리	
			UserVO vo= new UserVO(id, pw, name, email, addr, null);
		dao.join(vo);
		}
		
		return 0;
	}

}

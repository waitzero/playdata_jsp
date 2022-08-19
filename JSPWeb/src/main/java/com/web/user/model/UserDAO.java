package com.web.user.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	//db와 통신하는 전용클래스 - 메서드의 형태로 jdbc프로그램을 작성
	//1개의 객체만 생성되도록 singleton패턴
	//1. 나 자신의 객체를 변수로 선언
	private static UserDAO dao= new UserDAO();//계속 만들음 static작성하면 1개만 생성
	//2.외부에서 직접 생성하지 못하도록 생성자를 private처리
	private UserDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		}catch(Exception e) {
			
		}
	}
	//3.외부에서 객체생성을 요구할때 멤버변수 dao반환.->1번 호출
	public static UserDAO getInstance() {
		return dao;
	}
	///////////////////////////////////////////////////////
	//데이터베이스 관련변수를 멤버변수로 선언
	private String url ="jdbc:mysql://localhost:3306/jsp?serverTimezone=Asia/Seoul";
	private String uid ="jsp";
	private String upw = "jsp";
	private Connection conn = null;//데이터 베이스 연결
	private PreparedStatement pstmt = null;//sql문을 실행
	private ResultSet rs = null;//rs에 닶을 담음
	
	
	public void utilClose() {
		try {
		if(conn != null)  conn.close();
		if(pstmt != null) pstmt.close();
		if(rs != null) rs.close();
	}catch (Exception e){
		e.printStackTrace();
		}
	}
	
	
	//중복체크
	public int idCheck(String id) {
		String sql ="select  count(*) as total from users where id=?";
		int   total = 0;
		try {
			//conn연결
			conn=DriverManager.getConnection(url, uid, upw);
			//pstmt
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				total = rs.getInt("total");
			}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				utilClose();
	}
		return total;
	}



public void join(UserVO vo) {
	String sql ="insert into users(id, pw, name, email, addr) values(?, ?, ?, ?, ?)";
try {
	conn= DriverManager.getConnection(url, uid, upw);
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, vo.getId());
	pstmt.setString(2, vo.getPw());
	pstmt.setString(3, vo.getName());
	pstmt.setString(4, vo.getEmail());
	pstmt.setString(5, vo.getAddr());
pstmt.execute();
}catch (Exception e) {
	e.printStackTrace();
}finally {
	utilClose();
}
}
}
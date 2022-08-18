package com.simple.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	//db와 통신하는 전용클래스 - 메서드의 형태로 jdbc프로그램을 작성
	//1개의 객체만 생성되도록 singleton패턴
	//1. 나 자신의 객체를 변수로 선언
	private static MemberDAO dao= new MemberDAO();//계속 만들음 static작성하면 1개만 생성
	//2.외부에서 직접 생성하지 못하도록 생성자를 private처리
	private MemberDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		}catch(Exception e) {
			
		}
	}
	//3.외부에서 객체생성을 요구할때 멤버변수 dao반환.->1번 호출
	public static MemberDAO getInstance() {
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
	
}

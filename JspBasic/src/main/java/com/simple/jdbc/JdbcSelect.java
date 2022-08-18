package com.simple.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

public class JdbcSelect {

	public static void main(String[] args) {
		//jdbc 연습
		
	String url ="jdbc:mysql://localhost:3306/jsp?serverTimezone=Asia/Seoul";
	String uid ="jsp";
	String upw = "jsp";
	Connection conn = null;//데이터 베이스 연결
	PreparedStatement pstmt = null;//sql문을 실행
	ResultSet rs = null;//rs에 닶을 담음
	
	String sql = "select *from members oderby regdate desc";
	
	try {
	//1.커넥터 드라이버 로드
		Class.forName("com.mysql.cj.jdbc.Driver");
		//2.연결 객체 생성
		conn = DriverManager.getConnection(url, uid, upw);
		//3.커넥션으로 부터 pstmt을 구합니다,
		pstmt= conn.prepareStatement(sql);
		//4.sql문 실행
		//select구문은 excuteQuery(), insert, update, delete는 excuteUpdate()으로 실행
		rs= pstmt.executeQuery();//rs에 데이터 저장
		
		int count = 0;
		while(rs.next()) {
			//getString, getInt, getDouble, getTimestamp
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			String gender = rs.getString("gender");
			Timestamp regdate = rs.getTimestamp("regdate");
			
			System.out.println(id);
			System.out.println(pw);
			System.out.println(name);
			System.out.println(gender);
			System.out.println(regdate);
		}
	
	}catch(Exception e){
		e.printStackTrace();
	}finally {
		try {
			if (conn != null) conn.close();
			if (pstmt != null) pstmt.close();
			if (rs != null) rs.close();
		
		}catch(Exception e2){
			
		}
	}
		}
}

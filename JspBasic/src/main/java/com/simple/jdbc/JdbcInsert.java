package com.simple.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.Query;

public class JdbcInsert {

	public static void main(String[] args) {
		String url ="jdbc:mysql://localhost:3306/jsp?serverTimezone=Asia/Seoul";
		String uid ="jsp";
		String upw = "jsp";
		Connection conn = null;//데이터 베이스 연결
		PreparedStatement pstmt = null;//sql문을 실행
		ResultSet rs = null;//rs에 닶을 담음
		
		//insert, update, delete문은 비슷함
		String sql ="insert into members(id, pw, name, gender) values(?, ?, ?, ?)";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//1
			conn=DriverManager.getConnection(url, uid, upw);
			//2
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "kkk123");
			pstmt.setString(2, "1234");
			pstmt.setString(3, "신사임당");
			pstmt.setString(4, "n");
			
			//3.excuteUpdate는 성공시 1, 실패시 0을 반환
			int result = pstmt.executeUpdate();
			
			if(result ==1) {
				System.out.println("인서트 성공");
			}else {
				System.out.println("인서트 실패");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
			if (conn != null) conn.close();
			if (pstmt != null) pstmt.close();
			if (rs != null) rs.close();
		
		}catch(Exception e) {
			e.printStackTrace();
			
	}
		}
	}

}

package com.simple.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

public class jdbcSelect2 {

	public static void main(String[] args) {
		String url ="jdbc:mysql://localhost:3306/jsp?serverTimezone=Asia/Seoul";
		String uid ="jsp";
		String upw = "jsp";
		Connection conn = null;//데이터 베이스 연결
		PreparedStatement pstmt = null;//sql문을 실행
		ResultSet rs = null;//rs에 닶을 담음
		
		String sql = "select * from members where id =?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//1
			conn = DriverManager.getConnection(url, uid, upw);
			//2
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, "aaa123");
			//3.
			rs =pstmt.executeQuery();//pk를 통한 조회
			
			if(rs.next()) {//아이디가 존재하는 경우
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
				
			}else {//아이디가 존재하지 않는 경우			
			}
			}catch(Exception e) {
			
		}
	}

}

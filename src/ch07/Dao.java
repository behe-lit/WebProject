package ch07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dao {
	
	Connection conn;
	ResultSet rs;
	PreparedStatement pstmt;
	
	private static Dao dao = new Dao();
	
	public static Dao getInstance() {
		return dao;
	}
	
	private Dao() {
		String id="root";
		String pw="1234";
		String url ="jdbc:mysql://localhost:3306/mydb?serverTimezone=Asia/Seoul&useSSL=false";
		String driver = "com.mysql.cj.jdbc.Driver";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pw);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			try {
				if(conn != null &!conn.isClosed())
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	

}

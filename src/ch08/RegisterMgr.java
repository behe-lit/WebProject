package ch08;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ch07.DBConnectionMgr;

public class RegisterMgr {
	
	private DBConnectionMgr pool;

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public RegisterMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	
	public boolean loginRegister(String id, String pwd) {
		
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT pwd ");
		sql.append("from tblRegister");
		sql.append("WHERE id = ?");
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(pwd))
					return true;
			}
			
		} catch (SQLException e) {
						
			e.printStackTrace();
		} finally {
			pool.freeConnection(conn, pstmt, rs);
		}
		return false;
	}
	
}

package ch07;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

public class TeamMgr {

	private DBConnectionMgr pool;

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public TeamMgr() {
		pool = DBConnectionMgr.getInstance();
	}

	// ����
	public void insertTeam(TeamBean bean) {

		try {
			conn = pool.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("INSERT");
			sql.append("           tblTeam");
			sql.append("                     (name,city,age,team)");
			sql.append("                                             values(?,?,?,?);");

			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getCity());
			pstmt.setInt(3, bean.getAge());
			pstmt.setString(4, bean.getTeam());

			pstmt.executeUpdate(); // ����� ���ڵ��� ����

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// ����Ʈ
	public ArrayList<TeamBean> listTeam() {
		StringBuffer sql = new StringBuffer();
		sql.append("select");
		sql.append("         *from");
		sql.append("                tblTeam;");

		ArrayList<TeamBean> list = new ArrayList<TeamBean>();

		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				TeamBean bean = new TeamBean();
				bean.setNum(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setCity(rs.getString(3));
				bean.setAge(rs.getInt(4));
				bean.setTeam(rs.getString(5));
				list.add(bean);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return list;
	}
	
	public Vector<TeamBean> listTeam2() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<TeamBean> vlist = new Vector<TeamBean>();
		try {
			con = pool.getConnection();
			sql = "select * from tblTeam";
			pstmt = con.prepareStatement(sql);
			// ?�� ���� ������ ������ ����.
			rs = pstmt.executeQuery();// select ����
			// select�� ������� ũ�⸦ �𸣱� ������ �ݺ��� while�� ���
			while (rs.next()) {
				/*
				 * int num = rs.getInt(1);//1�� ������ �÷��� ù��° ����. num String name =
				 * rs.getString(2);//name String city = rs.getString(3); int age = rs.getInt(4);
				 * String team =rs.getString(5);
				 */
				TeamBean bean = new TeamBean();
				bean.setNum(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setCity(rs.getString(3));
				bean.setAge(rs.getInt(4));
				bean.setTeam(rs.getString(5));
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	

	// ���ڵ� ��������
	public TeamBean getTeam(int num) {

		conn = null;
		pstmt = null;
		rs = null;
		TeamBean bean = new TeamBean();

		try {
			conn = pool.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select");
			sql.append("         *from");
			sql.append("                tblTeam");
			sql.append("                           where num=?;");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();// select ����
			
			if (rs.next()) {
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setCity(rs.getString("city"));
				bean.setAge(rs.getInt("age"));
				bean.setTeam(rs.getString("team"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			pool.freeConnection(conn, pstmt, rs);
		}

		return bean;
	}

	// ����
	public boolean updateTeam(TeamBean bean) {
		String sql = null;
		boolean flag = false;
		try {
			conn = pool.getConnection();
			sql = "update tblTeam set name=?, city=?, age=?, team=? " + "where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getCity());
			pstmt.setInt(3, bean.getAge());
			pstmt.setString(4, bean.getTeam());
			pstmt.setInt(5, bean.getNum());
			if (pstmt.executeUpdate() == 1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(conn, pstmt);
		}
		return flag;

	}

	// ����
	public void deleteTeam(int num) {
		String sql = null;
		try {
			conn = pool.getConnection();
			sql = "delete from tblTeam where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(conn, pstmt);
		}
	}

	//team name list
	public ArrayList<String> listTeamName() {

		ArrayList<String> list = new ArrayList<>();
		StringBuffer sql = new StringBuffer();
		sql.append("select distinct");
		sql.append("  (team) from");
		sql.append("   tblTeam");

		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

	public static void main(String[] args) {
		
		
//		for(int i=0; i<list.size(); i++) {
//			System.out.println(list.get(i));
//		}
		
//		for(int i=0; i<4; i++) {
//			String value = result.get(i);
//			System.out.println(value);
//		}

	}

	
	
}

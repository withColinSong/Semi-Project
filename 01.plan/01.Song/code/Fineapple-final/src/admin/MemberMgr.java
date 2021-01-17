package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Application;

public class MemberMgr {
	Connection conn; 
	PreparedStatement ps; 
	ResultSet rs;
	
	public MemberMgr() {
		conn = new Application().getConn();

	}
	public boolean admin_login(String admin_id,String admin_pass){

		boolean b = false;

		try {

			String sql = "select * from admin where admin_id = ? and admin_pass = ?";

			ps = conn.prepareStatement(sql);
			ps.setString(1, admin_id);
			ps.setString(2, admin_pass);
			rs = ps.executeQuery();

			b=rs.next();

		} catch (Exception e) {
			System.out.println("admin_login err : " + e);

		} finally {

			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();

			} catch (Exception e2) {
			}
		}
		return b;
	}
}

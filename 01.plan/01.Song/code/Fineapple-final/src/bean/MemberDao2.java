
package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;

public class MemberDao2 {
	Connection conn; //database의 연결정보
	PreparedStatement ps; //문자열로 되어있는 sql문장을 sql실행문장으로 만들어주는statement
	ResultSet rs; //select문의 실행결과
	
	public MemberDao2() {
		conn = new Application().getConn();
	
	}
	
	public boolean login(String member_mid, String member_pwd) {
		boolean b = false; //기본 : 로그인되지 않았어
		try {
			String sql = "select count(member_mid) cnt from members where member_mid=? and member_pwd=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, member_mid); //index는 1부터 시작
			ps.setString(2, member_pwd);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt("cnt");
				if (cnt >= 1) { //정확히는 1
					b = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return b;
		}
	}
	
	
	public String findId(String member_name, String member_phone) {
		String mid = null;
		
		try {
			String sql = "select member_mid from members where member_name=? and member_phone=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, member_name);
			ps.setString(2, member_phone);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				mid = rs.getString("member_mid");
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mid;
	}
	
	public String findPw(String member_mid, String member_phone) {
		String pwd = null;
		try {
			String sql = "select member_pwd from members where member_mid=? and member_email=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, member_mid);
			ps.setString(2, member_phone);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				pwd = rs.getString("member_pwd");
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pwd;
	}
	
}

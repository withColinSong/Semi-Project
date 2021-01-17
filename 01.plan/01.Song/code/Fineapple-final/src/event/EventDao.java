package event;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Application;
import bean.NoticePage;

public class EventDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public EventDao() {
		conn = new Application().getConn();
	}
	
	public String insert(EventVo vo) {
		String msg = "작성완료";
		try {
			String sql = " insert into event "
					+ "(serial, mid, subject, doc, mdate)"
					+ "values(seq_noticebook.nextval, ?, ?, ?, ?, sysdate)";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getMid());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getSubject());
			ps.setString(4, vo.getDoc());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt < 1) {
				msg = "작성 중 오류";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return msg;
	}
	
	
	
	public List<EventVo> select(String findStr) {
		
		List<EventVo> list = new ArrayList<EventVo>();
		try {
			
			String sql = "select * from event where subject LIKE ? or doc LIKE ? ";
			ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, "%"+findStr+"%");
			ps.setString(2, "%"+findStr+"%");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				EventVo vo = new EventVo();
				vo.setSerial(rs.getInt("serial"));
				vo.setSubject(rs.getString("subject"));
				vo.setDoc(rs.getString("doc"));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return list;
	}
	
	
	public int getTotListSize(String findStr) throws Exception {
		
		int totListSize = 0;
		
		String sql = "select count(serial)cnt from event where subject LIKE ? or doc LIKE ?";

		ps = conn.prepareStatement(sql);
		ps.setString(1, "%"+findStr+"%");
		ps.setString(2, "%"+findStr+"%");
		
		rs = ps.executeQuery();
		if(rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
	}
	
	public EventVo view(int serial) {
		EventVo viewVo = new EventVo();
		try {
			String sql = "select * from event where serial = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, serial);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				viewVo.setSerial(rs.getInt("serial"));
				viewVo.setPwd(rs.getString("pwd"));
				viewVo.setSubject(rs.getString("subject"));
				viewVo.setDoc(rs.getString("doc"));
				viewVo.setMdate(rs.getString("mdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return viewVo;
	}
}




package inquirybook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FaqBookDao {

	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public FaqBookDao() {
		conn = new Application().getConn();
	}
	
	public List<FaqBookVo> select(String findStr) {
		List<FaqBookVo> list = new ArrayList<FaqBookVo>();
		try {
			String sql = "SELECT * FROM faqbook WHERE doctype LIKE ?";

			System.out.println(findStr);
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+findStr+"%");
			rs = ps.executeQuery();
			

			while(rs.next()) {
				System.out.println(rs.getString("subject"));
				FaqBookVo vo = new FaqBookVo();
				vo.setSubject(rs.getString("subject"));
				vo.setDoc(rs.getString("doc"));
				list.add(vo);
			}
			System.out.println(list);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		finally {
			try {
				conn.close();
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return list;
	}
	
	public String insert(FaqBookVo vo) {
		String msg = "정상적으로 등록되었습니다.";
		try {
			String sql = "INSERT INTO faqbook(doctype, subject, doc) VALUES(?, ?, ?)";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getDocType());
			ps.setString(2, vo.getSubject());
			ps.setString(3, vo.getDoc());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt<1) {
				msg = "입력 중 오류 발생";
				throw new Exception(msg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
				
			}
			catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return msg;
		
	}
}

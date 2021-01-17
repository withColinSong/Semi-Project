package notice;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.io.IOException;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.Application;

public class NoticeDao {
	Connection conn; //database의 연결정보
	PreparedStatement ps; //문자열로 되어있는 sql문장을 sql실행문장으로 만들어주는statement
	ResultSet rs; //select문의 실행결과
	

	
	public NoticeDao() {
		conn = new Application().getConn();
	
	}
	
	public int getNext() {
		String sql = "select notice_subject from notice ";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) +1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public List<NoticeVo> select(String findStr){
		String sql = "select notice_no, notice_subject, notice_doc, notice_date, notice_hit from notice where notice_subject like ? order by notice_no desc";
		List<NoticeVo> list = new ArrayList<NoticeVo>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr + "%");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				NoticeVo notice = new NoticeVo();
				notice.setNoticeNo(rs.getInt(1));
				notice.setNoticeSubject(rs.getString(2));
				notice.setNoticeDoc(rs.getString(3));
				notice.setNoticeDate(rs.getString(4));
				notice.setNoticeHit(rs.getInt(5));
				
				list.add(notice);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	}


public NoticeVo view(int noticeNo){
	NoticeVo notice = new NoticeVo();
	String sql = "select * from notice where notice_no like ? ";
	
	try {
		ps = conn.prepareStatement(sql);
		ps.setInt(1, noticeNo);
		
		rs = ps.executeQuery();
		while(rs.next()) {
			notice.setNoticeNo(rs.getInt("notice_no"));
			notice.setNoticeSubject(rs.getString("notice_subject"));
			notice.setNoticeDoc(rs.getString("notice_doc"));
			notice.setNoticeDate(rs.getString("notice_date"));
			notice.setNoticeHit(rs.getInt("notice_hit"));
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return notice;
}

public String insert(NoticeVo vo) {
	String msg = "작성되었습니다.";
	try {
		String sql = " insert into notice(notice_no, notice_subject, notice_doc,notice_hit, notice_date) "
				   + " values(seq_notice.nextval, ?, ?, 0, sysdate )";
		
		ps = conn.prepareStatement(sql);
		ps.setString(1, vo.getNoticeSubject());
		ps.setString(2, vo.getNoticeDoc());

		int rowCnt = ps.executeUpdate(); //insert된 행수
		if(rowCnt<1) {
			msg = "오류발생"	;
		}
	} catch (Exception ex) {
		ex.printStackTrace();
		msg = ex.getMessage();
	}finally {
		
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return msg;
	}
}

public String delete(NoticeVo vo) {
	String msg = "삭제되었습니다.";
	try {
		String sql = "delete from notice where notice_no=? ";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, vo.getNoticeNo());
		System.out.println(vo.getNoticeNo());
		System.out.println("noticeno설정");
		
		int rowCnt = ps.executeUpdate();
		System.out.println(rowCnt);
		if(rowCnt<1) {
			msg = "방명록 삭제 중 오류발생";
		}
		
	} catch (Exception ex) {
		msg = ex.getMessage();
	} finally {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return msg;
	}
}

}

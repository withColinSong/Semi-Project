package review;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class ReviewDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public ReviewDao() {
		conn = new Application().getConn();
	}
	
	public int getTotListSize(String findStr) throws Exception{
		int totListSize = 0;
		String sql = "select count(review_no) cnt from review where review_no like ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1,  "%" + findStr + "%");
		
		rs = ps.executeQuery();
		if(rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
		
	}	
	
	public List<ReviewVo> select(ReviewPage page){
		List<ReviewVo> list = new ArrayList<ReviewVo>();
		try {
			
			String f = page.getFindStr();
			page.setTotListSize(getTotListSize(f));
			page.pageCompute();
			
			String sql = " select * from ("
			           + "   select rownum no, m.* from ("
			           + "     select * from review join product on review.product_serial=product.product_serial "
					   + "     where review_subject like ? or review_doc like ? or review_no like ? "
					   + "     order by review_no desc) m   "
					   + " ) where no between ? and ? ";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1,  "%" + page.getFindStr() + "%");	
			ps.setString(2,  "%" + page.getFindStr() + "%");
			ps.setString(3,  "%" + page.getFindStr() + "%");	
			ps.setInt(4, page.getStartNo());
			ps.setInt(5, page.getEndNo());
			System.out.println(page.getFindStr());
			rs = ps.executeQuery();
			
			while(rs.next()) {
				ReviewVo vo = new ReviewVo();
				vo.setReviewSerial(rs.getInt("review_no"));
				vo.setMemberId(rs.getString("review_mid"));
				vo.setReviewTitle(rs.getString("review_subject"));
				vo.setReviewDate(rs.getString("review_date"));
				vo.setReviewDoc(rs.getString("review_doc"));
				vo.setReviewImg(rs.getString("review_photo"));
				vo.setProductName(rs.getString("product_name"));
				vo.setProductSerial(rs.getInt("product_serial"));
				//vo.setDelFile(rs.getString("delFile"));
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			disConn();
			return list;
		}
	}
	
	public String insert(ReviewVo vo) {
		String msg = "리뷰가 정상적으로 저장되었습니다.";
		
		try {
			String sql = "insert into review(review_no, review_mid, review_subject, review_date, review_doc, review_photo, product_name, product_serial)"
					+ " values(seq_review.nextval,?,?,sysdate,?,?,?,?)";
			
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getMemberId());
				ps.setString(2, vo.getReviewTitle());
				ps.setString(3, vo.getReviewDoc());
				ps.setString(4, vo.getReviewImg());
				ps.setString(5, vo.getProductName());
				ps.setInt(6, vo.getProductSerial());
				
				int rowCnt = ps.executeUpdate();
				if (rowCnt<1) {
					msg = "리뷰 작성 중 오류 발생";
					throw new Exception(msg);
				}
			
		} catch (Exception e) {
			msg = e.getMessage();
			
			// 이미 업로드된 파일 삭제
			File file = new File(ReviewFileUpload.saveDir + vo.getReviewImg());
			if(file.exists()) {
				file.delete();
			}
						
		}finally {
			disConn();
			return msg;
		}
	}
	
	public String update(ReviewVo vo) {
		String msg = "리뷰가 정상적으로 수정되었습니다.";
		
		try {
			String sql = "update review set review_subject = ?, review_doc = ?, review_date = sysdate ";
			
				if(vo.getReviewImg() != null && !vo.getReviewImg().equals("")) {
					sql += ", review_photo= '" + vo.getReviewImg() + "'";
				}
				sql +=  "where review_no = ?";
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getReviewTitle());
				ps.setString(2, vo.getReviewDoc());
				ps.setInt(3, vo.getReviewSerial());
				
				int rowCnt = ps.executeUpdate();
				if (rowCnt<1) {
					msg = "리뷰 작성 중 오류 발생";
					throw new Exception(msg);
				}
				
				//이미지가 수정된 경우 기존 파일 삭제
				if(vo.getReviewImg() !=null && !vo.getReviewImg().equals("")) {
					File file = new File(ReviewFileUpload.saveDir + vo.getDelFile());
					if(file.exists()) {
						file.delete();
					}
				}
			
		} catch (Exception e) {
			msg = e.getMessage();
			
						
		}finally {
			disConn();
			return msg;
		}
	}
	
	public String delete(ReviewVo vo){
		String msg = "리뷰가 정상적으로 삭제되었습니다.";
			try {
				String sql = "delete from review where review_no = ? ";
				ps = conn.prepareStatement(sql);
				System.out.println(vo.getReviewSerial());
				ps.setInt(1,vo.getReviewSerial());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt<1) {
				throw new Exception("회원 정보 삭제중 오류 발생");
			}
			
			//첨부 파일 삭제
			File file = new File(ReviewFileUpload.saveDir + vo.getDelFile());
			if(file.exists()) {
				file.delete();
			}
			
		}catch(Exception ex) {
			msg = ex.getMessage();
		}finally {
			disConn();
			return msg;
		}
	}
	
	public String delete2(int reviewSerial){
		String msg = "리뷰가 정상적으로 삭제되었습니다.";
			try {
				String sql = "delete from review where review_no = ? ";
				ps = conn.prepareStatement(sql);
				ps.setInt(1,reviewSerial);
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt<1) {
				throw new Exception("회원 정보 삭제중 오류 발생");
			}
			
		}catch(Exception ex) {
			msg = ex.getMessage();
		}finally {
			disConn();
			return msg;
		}
	}
	
	public ReviewVo view(int reviewSerial){
		ReviewVo vo = new ReviewVo();
		try {
			String sql = "select * from review where review_no = ? ";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, reviewSerial);
			rs = ps.executeQuery();
			if(rs.next()) {
				vo.setReviewSerial(rs.getInt("review_no"));
				vo.setMemberId(rs.getString("review_mid"));
				vo.setReviewTitle(rs.getString("review_subject"));
				vo.setReviewDate(rs.getString("review_date"));
				vo.setReviewDoc(rs.getString("review_doc"));
				vo.setReviewImg(rs.getString("review_photo"));
				vo.setProductName(rs.getString("product_name"));
				vo.setProductSerial(rs.getInt("review_serial"));
				
				System.out.println(vo.getReviewSerial());
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConn();
			return vo;
		}
	}
	
	public List<ReviewVo> viewList(int productSerial){
		List<ReviewVo> list = new ArrayList<ReviewVo>();
		try {
			String sql = "select * from review where product_serial = ? ";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, productSerial);
			rs = ps.executeQuery();
			if(rs.next()) {
				ReviewVo vo = new ReviewVo();
				vo.setReviewSerial(rs.getInt("review_no"));
				vo.setMemberId(rs.getString("review_mid"));
				vo.setReviewTitle(rs.getString("review_subject"));
				vo.setReviewDate(rs.getString("review_date"));
				vo.setReviewDoc(rs.getString("review_doc"));
				vo.setReviewImg(rs.getString("review_photo"));
				vo.setProductName(rs.getString("product_name"));
				vo.setProductSerial(rs.getInt("product_serial"));
				list.add(vo);
				
				
				System.out.println(vo.getReviewSerial());
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConn();
			return list;
		}
	}
	
	public void disConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

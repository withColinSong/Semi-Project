/*
 * package review;
 * 
 * import java.sql.Connection; import java.sql.PreparedStatement; import
 * java.sql.ResultSet; import java.sql.SQLException; import java.util.ArrayList;
 * 
 * import bean.Application;
 * 
 * public class ReviewDao3 {
 * 
 * Connection conn; PreparedStatement ps; ResultSet rs;
 * 
 * public ReviewDao3() { conn = new Application().getConn(); }
 * 
 * public String getDate() { String sql = "select now()"; try { ps =
 * conn.prepareStatement(sql); rs = ps.executeQuery(); if (rs.next()) { return
 * rs.getString(1); } } catch (SQLException e) { e.printStackTrace(); } return
 * ""; // 데이터 베이스 오류 }
 * 
 * public int getNext() { String sql =
 * "select reviewSerial from review order by reviewSerial desc"; try { ps =
 * conn.prepareStatement(sql); rs = ps.executeQuery(); if (rs.next()) { return
 * rs.getInt("reviewSerial") + 1; } return 1; //첫번째 개시물인 경우 } catch
 * (SQLException e) { e.printStackTrace(); } return -1; // 데이터 베이스 오류 }
 * 
 * public int write(String reviewTitle, String memberId, String reviewDoc) {
 * String sql =
 * "insert into review(reviewSerial, memberId, reviewTitle, reviewDate, reviewDoc, reviewAvailable) "
 * + "values(seq_reviewSerial.nextval,?,?,sysdate,?,?)"; try { ps =
 * conn.prepareStatement(sql); ps.setString(1,memberId);
 * ps.setString(2,reviewTitle); ps.setString(3,reviewDoc); ps.setInt(4, 1);
 * return ps.executeUpdate(); } catch (SQLException e) { e.printStackTrace(); }
 * return -1; // 데이터 베이스 오류 }
 * 
 * public ArrayList<ReviewVo> getList(int pageNumber) { String sql =
 * "select reviewSerial, memberId, reviewTitle, reviewDate, reviewDoc, reviewAvailable from "
 * +
 * "review where reviewSerial < ? and reviewAvailable = 1 order by reviewSerial desc"
 * ; ArrayList<ReviewVo> list = new ArrayList<ReviewVo>(); try { int next =
 * getNext()-((pageNumber-1) * 10); ps = conn.prepareStatement(sql);
 * ps.setInt(1, next); rs = ps.executeQuery(); while (rs.next()) { ReviewVo rv =
 * new ReviewVo(); rv.setReviewSerial(rs.getInt("reviewSerial"));
 * rv.setMemberId(rs.getString("memberId"));
 * rv.setReviewTitle(rs.getString("reviewTitle"));
 * rv.setReviewDate(rs.getString("reviewDate"));
 * rv.setReviewDoc(rs.getString("reviewDoc"));
 * rv.setReviewAvailable(rs.getInt("reviewAvailable")); list.add(rv); } }catch
 * (SQLException e) { e.printStackTrace(); } return list; }
 * 
 * public boolean nextPage(int pageNumber) { String sql =
 * "select reviewSerial from review where reviewSerial < ? and reviewAvailable = 1 order by reviewSerial limit 10"
 * ; try { int next = getNext()-((pageNumber-1) * 10); ps =
 * conn.prepareStatement(sql); ps.setInt(1, next); rs = ps.executeQuery(); if
 * (rs.next()) { return true; } }catch (SQLException e) { e.printStackTrace(); }
 * return false; }
 * 
 * public ReviewVo getReview(int reviewSerial) { String sql =
 * "select * from review where reviewSerial = ?"; try { ps =
 * conn.prepareStatement(sql); ps.setInt(1, reviewSerial); rs =
 * ps.executeQuery(); if (rs.next()) { ReviewVo rv = new ReviewVo();
 * rv.setReviewSerial(rs.getInt("reviewSerial"));
 * rv.setMemberId(rs.getString("memberId"));
 * rv.setReviewTitle(rs.getString("reviewTitle"));
 * rv.setReviewDate(rs.getString("reviewDate"));
 * rv.setReviewDoc(rs.getString("reviewDoc"));
 * rv.setReviewAvailable(rs.getInt("reviewAvailable")); return rv; } }catch
 * (SQLException e) { e.printStackTrace(); } return null; }
 * 
 * public int update(int reviewSerial, String reviewTitle, String reviewDoc) {
 * String sql =
 * "update review set reviewTitle = ?, reviewDoc = ? where reviewSerial = ? ";
 * try { ps = conn.prepareStatement(sql); ps.setString(1,reviewTitle);
 * ps.setString(2,reviewDoc); ps.setInt(3,reviewSerial);
 * 
 * return ps.executeUpdate(); } catch (SQLException e) { e.printStackTrace(); }
 * return -1; // 데이터 베이스 오류 }
 * 
 * public int delete(int reviewSerial) { String sql =
 * "update review set reviewAvailable = 0 where reviewSerial = ? "; try { ps =
 * conn.prepareStatement(sql); ps.setInt(1,reviewSerial);
 * 
 * return ps.executeUpdate(); } catch (SQLException e) { e.printStackTrace(); }
 * return -1; // 데이터 베이스 오류 } }
 */
package mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Application;
import product.ProductVo;

public class CartDao {
	Connection conn; // database의 연결정보
	PreparedStatement ps; // 문자열로 되어있는 sql문장을 sql실행문장으로 만들어주는statement
	ResultSet rs; // select문의 실행결과

	public CartDao() {

	}

	private static CartDao instance = new CartDao();

	public static CartDao getInstance() {
		return instance;
	}

	public int getTotListSize(String findStr) throws Exception {
		int totListSize = 0;
		String sql = "SELECT count(serial)cnt FROM product" + " WHERE code LIKE ? or name  LIKE ? ";

		ps = conn.prepareStatement(sql);
		ps.setString(1, "%" + findStr + "%");
		ps.setString(2, "%" + findStr + "%");

		rs = ps.executeQuery();
		if (rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
	}

	// c Read u d
	public ProductVo basket(int product_serial) {
		// 상품 정보 불러오기
		String sql = "select * from product where product_serial =?";
		ProductVo vo = new ProductVo();

		try {

			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);

			ps.setInt(1, product_serial);
			rs = ps.executeQuery();

			while (rs.next()) {
				vo.setProduct_serial(rs.getInt("product_serial"));
				vo.setProduct_name(rs.getString("product_name"));
				vo.setProduct_price(rs.getInt("product_price"));
				vo.setProduct_picture_url(rs.getString("product_picture_url"));
				vo.setProduct_description(rs.getString("product_description"));
				vo.setProduct_link_url(rs.getString("product_link_url"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Application.close(conn, ps, rs);
		}
		return vo;
	}

	public void insertCart(String user_id, int product_code, int cart_amount) {
		// 카트에 상품 담기

		CartVo2 vo2 = new CartVo2();
		int a = SortCart(user_id);

		try {
			String sql = "insert into cart values(";
			if (a == 1) {
				sql += "seq_cart.nextval, ";
			} else {
				sql += "seq_cart.nextval, ";
			}
			sql += "0, ?, ?, ?)";
			System.out.println(sql);
			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user_id);
			ps.setInt(2, product_code);
			ps.setInt(3, cart_amount);
			
			System.out.println(user_id);
			System.out.println(product_code);
			System.out.println(cart_amount);

			int rowCnt = ps.executeUpdate();

			if (rowCnt < 1) {
				System.out.println("장바구니 담기 중 오류 발생");

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			System.out.println("list에 add완료");
		}
	}

	
	public void deleteCart(int product_code,String user_id) { 
		String sql="delete cart where product_code=? and userid=? and cart_statement=0";
	 
	  try { 

		  conn = new Application().getConn();
			ps = conn.prepareStatement(sql);
	  
	  ps.setInt(1, product_code); 
	  ps.setString(2, user_id); 
	  ps.executeUpdate(); 
	  }
	  catch(Exception e) 
	  {
	  e.printStackTrace(); 
	  }finally { 
		  Application.close(conn, ps); 
		  } 
	  }
	public void deleteOrderlist(int product_code,String user_id) { 
		String sql="delete cart where product_code=? and userid=? and cart_statement=1";
	 
	  try { 

		  conn = new Application().getConn();
			ps = conn.prepareStatement(sql);
	  
	  ps.setInt(1, product_code); 
	  ps.setString(2, user_id); 
	  ps.executeUpdate(); 
	  }
	  catch(Exception e) 
	  {
	  e.printStackTrace(); 
	  }finally { 
		  Application.close(conn, ps); 
		  } 
	  }
	public void deleteCartAll(String user_id) {
		String sql="delete cart where userid=? and cart_statement=0";
		 
		  try { 

			  conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
		  
		  ps.setString(1, user_id); 
		  ps.executeUpdate(); 
		  }
		  catch(Exception e) 
		  {
		  e.printStackTrace(); 
		  }finally { 
			  Application.close(conn, ps); 
			  } 
	}
	
	public void deleteAllOrderlist(String user_id) {
		String sql="delete cart where userid=? and cart_statement=1";
		 
		  try { 

			  conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
		  
		  ps.setString(1, user_id); 
		  ps.executeUpdate(); 
		  }
		  catch(Exception e) 
		  {
		  e.printStackTrace(); 
		  }finally { 
			  Application.close(conn, ps); 
			  } 
	}
	
	public void sumCart(int product_code, String user_id) {
		String sql="select sum(cart where product_code=? and userid=? and cart_statement=0";
		  try { 

			  conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
		  
		  ps.setInt(1, product_code); 
		  ps.setString(2, user_id); 
		  ps.executeUpdate(); 
		  }
		  catch(Exception e) 
		  {
		  e.printStackTrace(); 
		  }finally { 
			  Application.close(conn, ps); 
			  } 
		  }
	
	
	/*
	 * public void updateCart(int product_code) { String sql="alter " try {
	 * 
	 * conn = new Application().getConn(); ps = conn.prepareStatement(sql);
	 * 
	 * ps.setInt(1, product_code); ps.executeUpdate(); } catch(Exception e) {
	 * e.printStackTrace(); }finally { Application.close(conn, ps); } }
	 */
	
	public int SortCart(String user_id) {
		CartVo2 vo = new CartVo2();
		int a = 0; //a는 장바구니 상태 0이면 장바구니 사용중 1이면 장바구니 미사용중
		try {
			String sql = "select * from Cart where userid= ? and cart_statement=0";

			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);
			
			System.out.println(sql);
			
			ps.setString(1, user_id);
			rs = ps.executeQuery();

			if (rs != null) { // 장바구니가 비었을 때
				a = 0;
			} else {
				a = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Application.close(conn, ps, rs);
			return a;
		}
	}

	public List<CartListVo> CartList(String user_id) {
		List<CartListVo> list = new ArrayList<CartListVo>();
		try {
			String sql = "select * from cart " + "join product on cart.product_code=product.product_serial "
					+ "where userid=? and cart_statement=0";

			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);

			ps.setString(1, user_id);
			rs = ps.executeQuery();

			while (rs.next()) {
				CartListVo vo = new CartListVo();
				vo.setCart_statement(rs.getInt("cart_statement"));
				vo.setCart_code(rs.getInt("cart_code"));
				vo.setUserid(rs.getString("userid"));
				vo.setCart_amount(rs.getInt("cart_amount"));
				vo.setProduct_code(rs.getInt("product_code"));
				vo.setProduct_serial(rs.getInt("product_serial"));
				vo.setProduct_name(rs.getString("product_name"));
				vo.setProduct_price(rs.getInt("product_price"));
				vo.setProduct_picture_url(rs.getString("product_picture_url"));

				System.out.println(vo.getCart_statement());
				list.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Application.close(conn, ps, rs);
			return list;
		}
	}

	public List<CartListVo> OrderList(String user_id) {
		List<CartListVo> list = new ArrayList<CartListVo>();
		try {
			String sql = "select * from cart " + "join product on cart.product_code=product.product_serial "
					+ "where userid=? and cart_statement=1 ";

			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);

			ps.setString(1, user_id);
			rs = ps.executeQuery();

			while (rs.next()) {
				CartListVo vo = new CartListVo();
				vo.setCart_statement(rs.getInt("cart_statement"));
				vo.setCart_code(rs.getInt("cart_code"));
				vo.setUserid(rs.getString("userid"));
				vo.setCart_amount(rs.getInt("cart_amount"));
				vo.setProduct_code(rs.getInt("product_code"));
				vo.setProduct_serial(rs.getInt("product_serial"));
				vo.setProduct_name(rs.getString("product_name"));
				vo.setProduct_price(rs.getInt("product_price"));
				vo.setProduct_picture_url(rs.getString("product_picture_url"));

				list.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Application.close(conn, ps, rs);
			return list;
		}
	}
	
	public void payment(String user_id) {
		try {
			String sql = "update cart set cart_statement = 1 "
					+ "where userid=? and cart_statement = 0";

			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);

			ps.setString(1, user_id);
			int rowCnt = ps.executeUpdate();

			if(rowCnt<1) {
			String msg = "장바구니에서 결제내역으로 이동 중 오류 발생";
				throw new Exception(msg);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Application.close(conn, ps, rs);
		}
	}

	
}
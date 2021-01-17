package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class ProductDao2 {
	Connection conn; 
	PreparedStatement ps; 
	ResultSet rs;
	public ProductDao2() {
	}

		private static ProductDao2 instance = new ProductDao2();
		
		public static ProductDao2 getInstance() {
			return instance;
		}

		public int getTotListSize(String findStr) throws Exception {
			int totListSize = 0;
			String sql = "SELECT count(serial)cnt FROM product"
					+ " WHERE product_serial LIKE ? or product_name  LIKE ? ";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr +"%");
			ps.setString(2, "%" + findStr +"%");
			
			rs = ps.executeQuery();
			if(rs.next()) {
				totListSize = rs.getInt("cnt");
			}
			return totListSize;
		}
		
		
		//c Read u d
		public List<ProductVo> selectPricelist(){
			//낮은 가격 순
			String sql = "select * from product order by product_price asc";
			List<ProductVo> list = new ArrayList<ProductVo>();
			
			
			try {
				conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					ProductVo vo = new ProductVo();
					vo.setProduct_serial(rs.getInt("product_serial"));
					vo.setProduct_name(rs.getString("product_name"));
					vo.setProduct_price(rs.getInt("product_price"));
					vo.setProduct_picture_url(rs.getString("product_picture_url"));
					vo.setProduct_description(rs.getString("product_description"));
					vo.setProduct_link_url(rs.getString("product_link_url"));
					list.add(vo);
				}
			
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				Application.close(conn, ps, rs);
			}
			return list;
		}
		
		
		public List<ProductVo> selectPricelistdesc(){
			//높은가격 순
			String sql = "select * from product order by product_price desc";
			List<ProductVo> list = new ArrayList<ProductVo>();
			
			
			try {
				conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					ProductVo vo = new ProductVo();
					vo.setProduct_serial(rs.getInt("product_serial"));
					vo.setProduct_name(rs.getString("product_name"));
					vo.setProduct_price(rs.getInt("product_price"));
					vo.setProduct_picture_url(rs.getString("product_picture_url"));
					vo.setProduct_description(rs.getString("product_description"));
					vo.setProduct_link_url(rs.getString("product_link_url"));
					list.add(vo);
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				Application.close(conn, ps, rs);
			}
			System.out.println("list에 add완료");
			return list;
		}
		
		
		public List<ProductVo> selectRecentlist(){
			//높은가격 순
			String sql = "select * from product order by product_serial ";
			List<ProductVo> list = new ArrayList<ProductVo>();
			
			
			try {
				conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					ProductVo vo = new ProductVo();
					vo.setProduct_serial(rs.getInt("product_serial"));
					vo.setProduct_name(rs.getString("product_name"));
					vo.setProduct_price(rs.getInt("product_price"));
					vo.setProduct_picture_url(rs.getString("product_picture_url"));
					vo.setProduct_description(rs.getString("product_description"));
					vo.setProduct_link_url(rs.getString("product_link_url"));
					list.add(vo);
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				Application.close(conn, ps, rs);
			}
			System.out.println("list에 add완료");
			return list;
		}

		
		
		
		
	
		
		
		
		
}

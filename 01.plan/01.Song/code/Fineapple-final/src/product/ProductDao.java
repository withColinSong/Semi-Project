package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bean.Application;

public class ProductDao {
	Connection conn; 
	PreparedStatement ps; 
	ResultSet rs;
	SqlSession sqlSession;
	
	
	public ProductDao() {
		try {
			sqlSession = ProductFactory.getFactory().openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

		private static ProductDao instance = new ProductDao();
		
		public static ProductDao getInstance() {
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
		public List<ProductVo> selectAllProducts(String description){
			//최근 등록한 상품 먼저 출력하기
			String sql = "select * from product where product_description = ? ";
			List<ProductVo> list = new ArrayList<ProductVo>();
			
			
			try {
				conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
				ps.setString(1, description);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					ProductVo vo = new ProductVo();
					vo.setProduct_serial(rs.getInt("product_serial"));
					vo.setProduct_name(rs.getString("product_name"));
					vo.setProduct_price(rs.getInt("product_price"));
					vo.setProduct_picture_url(rs.getString("product_picture_url"));
					vo.setProduct_description(rs.getString("product_description"));
					vo.setProduct_link_url(rs.getString("product_link_url"));
					vo.setProduct_youtubeUrl(rs.getString("product_youtubeUrl"));
					vo.setProduct_pdInfo(rs.getString("product_pdInfo"));
					vo.setProduct_color(rs.getString("product_color"));
					list.add(vo);
					
					
					
				}
			
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				Application.close(conn, ps, rs);
			}
			return list;
		}

		
		public List<ProductVo> select(String findStr) {
			List<ProductVo> list = new ArrayList<ProductVo>();
			try {
				
				conn = new Application().getConn();
				
				String sql = "SELECT * FROM product WHERE product_name LIKE ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%" + findStr + "%");
				rs= ps.executeQuery();
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
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return list;
		}
		

		public ProductVo product_view(int product_serial){
			//최근 등록한 상품 먼저 출력하기
			String sql = "select * from product where product_serial = ? ";
			ProductVo vo = new ProductVo();
					
			
			try {
				conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
				ps.setInt(1, product_serial);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					vo.setProduct_serial(rs.getInt("product_serial"));
					vo.setProduct_name(rs.getString("product_name"));
					vo.setProduct_price(rs.getInt("product_price"));
					vo.setProduct_picture_url(rs.getString("product_picture_url"));
					vo.setProduct_description(rs.getString("product_description"));
					vo.setProduct_link_url(rs.getString("product_link_url"));
					vo.setProduct_youtubeUrl(rs.getString("product_youtubeUrl"));
					vo.setProduct_pdInfo(rs.getString("product_pdInfo"));
					vo.setProduct_color(rs.getString("product_color"));
					
				
					
				}
			
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				Application.close(conn, ps, rs);
			}
			return vo;
		}
		

		//전체 상품 목록 출력
		public ArrayList<ProductVo> getProductAll(){
			ArrayList<ProductVo> list = new ArrayList<ProductVo>();	
					try {
				
				conn = new Application().getConn();
				String findStr = "";
				int totListSize = getTotListSize(findStr);
				ProductPage page = new ProductPage();
				page.setTotListSize(totListSize);
				page.pageCompute();
				
						
				String sql = "select * from product";
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while(rs.next()){
					ProductVo vo = new ProductVo();
					vo.setProduct_description(rs.getString("product_description"));
					vo.setProduct_serial(rs.getInt("product_serial"));
					vo.setProduct_name(rs.getString("product_name"));
					vo.setProduct_price(rs.getInt("product_price"));
					list.add(vo);
				}
				
			} catch (Exception e) {
				System.out.println("getProductAll err : " + e);
			} finally {
				try {
					rs.close();
					ps.close();
					conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
			return list;
		}
		
		public Map<String, Object> select(ProductPage page) {
			Map<String, Object> map = new HashMap<>();
			List<ProductVo> list = new ArrayList<>();
			
			try {
				int totListSize = sqlSession.selectOne("admin.tot_list_size");
				System.out.println(totListSize);
				
				page.setTotListSize(totListSize);
				page.pageCompute();
				list = sqlSession.selectList("admin.selectAll", page);
				map.put("page", page);
				map.put("list", list);
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			finally {
				sqlSession.close();
			}
			return map;
			
		}
	
		
		
		
		
}

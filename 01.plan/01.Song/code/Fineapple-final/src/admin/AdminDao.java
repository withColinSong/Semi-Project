package admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import product.ProductVo;

public class AdminDao {

	SqlSession sqlSession;
	
	public AdminDao() {
		sqlSession = AdminFactory.getFactory().openSession();
	}

	public Map<String, Object> select(AdminPage page) {
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

package users;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class BoardDao {
	SqlSession sqlSession;
	
	public BoardDao() {
		
		sqlSession = BoardFactory.getFactory().openSession(); 
		
	}
	
}

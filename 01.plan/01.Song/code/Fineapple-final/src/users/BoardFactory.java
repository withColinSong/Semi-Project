package users;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class BoardFactory {
	
	private static SqlSessionFactory factory;
	
	static {
		
		try {
		
			Reader reader = Resources.getResourceAsReader("users/config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}
	
}

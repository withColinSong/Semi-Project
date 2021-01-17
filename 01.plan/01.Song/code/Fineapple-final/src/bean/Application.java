package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class Application {
   //DB 연결 소스
   Connection conn;
   public Application() {
      try {
    	  
    	//메모리에 올리는 작업을 class.forname이 함
         Class.forName("oracle.jdbc.driver.OracleDriver"); 
         
       //oracle드라이버의 위치, 포트 등등 유저명, 암호 등을 사용해서 객체를 생성하면 커넥션 객체가 만들어짐
         conn = DriverManager.getConnection(
               "jdbc:oracle:thin:@localhost:1521:XE", 
               "examuser", "1234"
               ); 
      }catch(Exception ex) {
         ex.printStackTrace();
      }
   }
   public Connection getConn() {//getter만 만듬 
      return conn;
   }
   
   public static void close(Connection conn, Statement stmt, ResultSet rs) {
	   try {
		rs.close();
		stmt.close();
		conn.close();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
   }
   
   public static void close(Connection conn, Statement stmt) {
	   try {
		stmt.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
   }
}





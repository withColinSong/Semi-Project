package inquirybook;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Application {
	Connection conn;
	public Application() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn 
			= DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"examuser", "1234"
					);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	public Connection getConn() {
		return conn;
	}
}
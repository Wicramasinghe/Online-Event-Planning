package Admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
	private static String url = "jdbc:mysql://localhost:3306/eventplanning";
	private static String user = "root";
	private static String pass = "admin";
	
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
}

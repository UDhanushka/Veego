package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/veego";
	private static String user = "root";
	private static String pass = "admin";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			
		}catch(Exception e) {
			//e.printStackTrace();
			System.out.println("Database connection is not success!!!");
		}
		
		
		return con;
	}
	
	
}

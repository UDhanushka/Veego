package user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		
	public static boolean insertcustomer(String name, String email, String password,String role) {
		boolean isSuccess = false;
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO user VALUES (0,'"+name+"','"+email+"','"+password+"', '"+role+"')";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			}
			else {
				isSuccess =false;
			}
							
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	public static List<User> validate(String email, String password){
		ArrayList<User> login = new ArrayList();
		
		
		//validation
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from user where email = '"+email+"' and password = '"+password+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String emailU = rs.getString(3);
				String passU = rs.getString(4);
				String role = rs.getString(5);
				
				
				User c = role.equalsIgnoreCase("admin") 
						? new AdminUser(id, name,emailU, passU)
						: new NormalUser(id,name,emailU, passU);
				
				login.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return login;
	}
	
	
	
	
	
	//update part.................................................................
	public static boolean updateUser(String id, String name, String email, String password) {
		
		try {
			con=DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update user set name = '"+name+"' , email ='"+email+"', password ='"+password+"' where id = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess =false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	//data reterive part......................................................
		public static List<User> getCustomerDetails(String Id){
			
			int convertedID = Integer.parseInt(Id);
			
			ArrayList<User> login = new ArrayList();
			
			
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
			
				String sql = "SELECT * FROM user where id = '"+convertedID+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);;
					String password = rs.getString(4);
					String role = rs.getString(5);
					
					//User c = new User(id, name, email, password, role);
					User c = role.equalsIgnoreCase("admin") 
							? new AdminUser(id, name,email, password)
							: new NormalUser(id,name,email, password);
					
					login.add(c);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return login;
		}
		
		
		//delete user part......................................................................................................................
		public static boolean deleteUser(String Id) {
			
			try {
				int convId = Integer.parseInt(Id);
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "DELETE FROM user WHERE id = '"+convId+"'";
				int r = stmt.executeUpdate(sql);
				
				if(r > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
}






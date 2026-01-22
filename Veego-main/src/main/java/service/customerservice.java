package service;
import controller.DBconnecct;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Customer;

public class customerservice {
	
	public static List<Customer> validate (String userName, String password){
		
		ArrayList<Customer> cus = new ArrayList<>();
		try {
		
		Statement stmt = DBconnecct.getConnection().createStatement();
		
		String sql = "select * from users where username ='"+userName+"' and password ='"+password+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
			if (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String username = rs.getString(3);
				String email = rs.getString(4);
				String pass = rs.getString(5);
				
				Customer c = new Customer(id, name, username, email, pass);
				
				cus.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return cus;
		
	}

}

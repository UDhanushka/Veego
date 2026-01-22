package service;

import java.sql.Statement;


import controller.DBconnecct;
import model.studentModel;

public class studentservices {

public void InsertData(studentModel std) {
	try {
		String name = std.getName();
		String user = std.getUsername();
		String email = std.getEmail();
		String pass = std.getPass();
		
		
		Statement stmt = DBconnecct.getConnection().createStatement();
		
		String sql = "INSERT INTO users VALUES('"+0+"','"+name+"','"+user+"','"+email+"','"+pass+"')";
		
		stmt.executeUpdate(sql);
		
		stmt.close();
		
		
	}
	catch(Exception e) {
		System.out.println(e);
	}
}


}


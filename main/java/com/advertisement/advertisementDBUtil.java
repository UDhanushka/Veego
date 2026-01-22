package com.advertisement;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class advertisementDBUtil {
	
	//private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean insertAdvertisement( String title, String media_url, String position, String start_date,String end_dates, String status, int Views){
		
		boolean isSuccess = false;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			//Connection con = DriverManager.getConnection(url,user,pass);
			//Statement stmt = con.createStatement();
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "INSERT INTO advertisements (title, media_url, position, start_date, end_date, status, views) " +
		             "VALUES ('" + title + "', '" + media_url + "', '" + position + "', '" + start_date + "', '" + end_dates + "', '" + status + "', " + Views + ")";

			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		 
		return isSuccess;
	}
	
	//getById
	public static List<advertisement>  getById (int Id){
		
		ArrayList <advertisement> adDetails = new ArrayList<>();
		
		try {
			//DBConnection
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from advertisements where id= '"+Id+"'";
			//String sql = "SELECT * FROM advertisements WHERE id = " + Id;

			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String title = rs.getString(2);
				String media_url = rs.getString(3);
				String position = rs.getString(4);
				String start_date = rs.getString(5);
				String end_date = rs.getString(6);
				String status = rs.getString(7);
				
				advertisement ad = new advertisement(id, title, media_url, position, start_date, end_date, status);
				adDetails.add(ad);
			}
						
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return adDetails;
		
	}
	
	public static List<advertisement>  getAllById (){
		
		ArrayList <advertisement> adsDetails = new ArrayList<>();
		
		try {
			//DBConnection
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from advertisements";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String title = rs.getString(2);
				String media_url = rs.getString(3);
				String position = rs.getString(4);
				String start_date = rs.getString(5);
				String end_date = rs.getString(6);
				String status = rs.getString(7);
				
				advertisement ad = new advertisement(id, title, media_url, position, start_date, end_date, status);
				adsDetails.add(ad);
			}
						
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return adsDetails;	
	}
	
	
	//update Data
	public static boolean updatedata( int id, String title, String media_url, String position, String start_date,String end_date, String status) {
		
		boolean isSuccess = false;
		
		try {
			//DBConnection
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			//Query
			//String sql = "update advertisements set title= '" + title + "', media_url='" + media_url + "', position='" + position + "', start_date='" + start_date + "', end_date='" + end_date + "', status='" + status + "'" 
			//		+ "where id= '"+ id +"'"  ;
			//+ "where id='"+ id +"' ";
			String sql = "UPDATE advertisements SET title='" + title + "', media_url='" + media_url + "', position='" + position + "', start_date='" + start_date + "', end_date='" + end_date + "', status='" + status + "' WHERE id='" + id + "'";

			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	//Delete data
	public static boolean deleteData(int id) {
		
		boolean isSuccess = false;
		
		try{
			//DBConnection
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "delete from advertisements where id='"+ id +"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
	
	return isSuccess;
	
	}
	
	//here
	public static List<advertisement> getActiveAds() {
	    List<advertisement> ads = new ArrayList<>();

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "SELECT * FROM advertisements ";
	        //WHERE status='active'
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	        	/*
	            int id = rs.getInt("id");
	            String title = rs.getString("title");
	            String media_url = rs.getString("media-url");
	            String position = rs.getString("position");
	            String start_date = rs.getString("start-date");
	            String end_date = rs.getString("end-date");
	            String status = rs.getString("status");
				*/
	        	
	        	int id = rs.getInt(1);
				String title = rs.getString(2);
				String media_url = rs.getString(3);
				String position = rs.getString(4);
				String start_date = rs.getString(5);
				String end_date = rs.getString(6);
				String status = rs.getString(7);
				
	        	
	            advertisement ad = new advertisement(id, title, media_url, position, start_date, end_date, status);
	            ads.add(ad);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return ads;
	}

	//Ad request
	public static boolean insertRequest(String title, String description, String mediaURL, String contact, int userId) {
	    boolean isSuccess = false;

	    try {
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection con = DBConnect.getConnection();
	        Statement stmt = con.createStatement();

	        String sql = "INSERT INTO requests (title, description, media_url, contact, user_id) " +
	                     "VALUES ('" + title + "', '" + description + "', '" + mediaURL + "', '" + contact + "', " + userId + ")";

	        int rs = stmt.executeUpdate(sql);

	        isSuccess = rs > 0;

	    } catch (Exception e) {
	        e.printStackTrace(); 
	    }

	    return isSuccess;
	}

	
	/*public static List<AdRequest> getById(int id){
		ArrayList <AdRequest> request = new ArrayList<>();
		
		return request;
	}*/
	
	//getById requests
		public static List<AdRequest>  getById1 (int Id){
			
			ArrayList <AdRequest> requestDetails = new ArrayList<>();
			
			try {
				//DBConnection
				con = DBConnect.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "select * from requests where id= '"+Id+"'";
				//String sql = "SELECT * FROM advertisements WHERE id = " + Id;

				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String title = rs.getString(2);
					String description = rs.getString(3);
					String mediaURL = rs.getString(4);
					String contact = rs.getString(5);
					int userId = rs.getInt(6);
					
					AdRequest request = new AdRequest(id, title, description, mediaURL, contact, userId);
					requestDetails.add(request);
				}
							
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return requestDetails;
			
		}
		
		
		//getall requests
		public static List<AdRequest>  getAllById1 (){
			
			ArrayList <AdRequest> requestsDetails = new ArrayList<>();
			
			try {
				//DBConnection
				con = DBConnect.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "select * from requests";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String title = rs.getString(2);
					String description = rs.getString(3);
					String mediaURL = rs.getString(4);
					String contact = rs.getString(5);
					int userId = rs.getInt(6);
					
					AdRequest request = new AdRequest(id, title, description, mediaURL, contact, userId);
					requestsDetails.add(request);
				}
							
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return requestsDetails;	
		}
	
}
	






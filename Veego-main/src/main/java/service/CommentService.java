package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;


import controller.DBconnecct;
import model.Comment;

public class CommentService {
	 public static boolean insertComment(Comment comment) {
	        boolean success = false;
	        String sql = "INSERT INTO comment (content, date, user_id) VALUES (?, NOW(), ?)";

	        try (Connection conn = DBconnecct.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {

	            stmt.setString(1, comment.getContent());
	            stmt.setInt(2, comment.getUserId());

	            int rowsAffected = stmt.executeUpdate();
	            if (rowsAffected > 0) {
	                success = true;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return success;
	    }
	 
	 
	 
	    public static boolean updateComment(int id, String content) {
	        boolean success = false;

	        try {
	           
	            Connection conn = DBconnecct.getConnection();

	            String sql = "UPDATE comment SET content = ? WHERE id = ?";
	            PreparedStatement stmt = conn.prepareStatement(sql);
	            stmt.setString(1, content);
	            stmt.setInt(2, id);

	            int rows = stmt.executeUpdate();
	            success = rows > 0;

	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return success;
	    }


	 
	 public static List<Comment> getCommentsByUserId(int userId) {
		    List<Comment> comments = new ArrayList<>();
		    String sql = "SELECT c.content, c.date, c.user_id, u.username FROM comment c " +
		                 "JOIN users u ON c.user_id = u.id WHERE c.user_id = ? ORDER BY c.date DESC";

		    try (Connection conn = DBconnecct.getConnection();
		         PreparedStatement stmt = conn.prepareStatement(sql)) {

		        stmt.setInt(1, userId);
		        ResultSet rs = stmt.executeQuery();

		        while (rs.next()) {
		            String content = rs.getString("content");
		            Timestamp date = rs.getTimestamp("date");
		            String username = rs.getString("username");

		            comments.add(new Comment(content, userId, username, date));
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return comments;
		}
	 
	 
	 
	    public static List<Comment> getAllComments() {
	        List<Comment> comments = new ArrayList<>();

	        try {
	            
	            Connection conn = DBconnecct.getConnection();

	            String sql = "SELECT * FROM comment ORDER BY date DESC";
	            PreparedStatement stmt = conn.prepareStatement(sql);
	            ResultSet rs = stmt.executeQuery();

	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String content = rs.getString("content");
	                Timestamp date = rs.getTimestamp("date");
	                comments.add(new Comment(id, content, date));
	            }

	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return comments;
	    }
	 

	 
    


	    public static boolean deleteComment(int id) {
	        boolean success = false;

	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DBconnecct.getConnection();
	            
	            String sql = "DELETE FROM comment WHERE id = ?";
	            PreparedStatement stmt = conn.prepareStatement(sql);
	            stmt.setInt(1, id);

	            int rows = stmt.executeUpdate();
	            success = rows > 0;

	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return success;
	    }


}

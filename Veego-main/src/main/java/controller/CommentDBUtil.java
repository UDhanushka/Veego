package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Comment;

public class CommentDBUtil {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/veego";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "admin";

    public static boolean insertComment(Comment comment) {
        boolean success = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "INSERT INTO comments (content) VALUES (?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, comment.getContent());

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                success = true;
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }
    
    public static List<Comment> getAllComments() {
        List<Comment> comments = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "SELECT * FROM comments ORDER BY date DESC";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String content = rs.getString("content");
                String date = rs.getString("date");
                
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("hello");
        }

        return comments;
    }
    
    
    public static boolean updateComment(int id, String content) {
        boolean success = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "UPDATE comments SET content = ? WHERE id = ?";
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
    
    
    public static boolean deleteComment(int id) {
        boolean success = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "DELETE FROM comments WHERE id = ?";
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

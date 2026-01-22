package controller;

import model.Reply;
import java.sql.*;
import java.util.*;

public class ReplyDBUtil {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/veego";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "admin";

    public static boolean insertReply(Reply reply) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "INSERT INTO replies (comment_id, content) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, reply.getCommentId());
            stmt.setString(2, reply.getContent());

            boolean success = stmt.executeUpdate() > 0;
            conn.close();
            return success;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static List<Reply> getRepliesByCommentId(int commentId) {
        List<Reply> replies = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "SELECT * FROM replies WHERE comment_id = ? ORDER BY date ASC";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, commentId);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                replies.add(new Reply(
                    rs.getInt("id"),
                    rs.getInt("comment_id"),
                    rs.getString("content"),
                    rs.getString("date")
                ));
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return replies;
    }

    public static boolean updateReply(int id, String content) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "UPDATE replies SET content = ? WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, content);
            stmt.setInt(2, id);

            boolean success = stmt.executeUpdate() > 0;
            conn.close();
            return success;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deleteReply(int id) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String sql = "DELETE FROM replies WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);

            boolean success = stmt.executeUpdate() > 0;
            conn.close();
            return success;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

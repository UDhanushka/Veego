package service;

import model.Video;  // Ensure you're importing the correct Video class from model
import util.DBConnect;  // Ensure you're importing DBConnect for DB operations

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VideoDBUtil implements VideoService {

    @Override
    public List<Video> getVideosByCategory(String category) {
        List<Video> videos = new ArrayList<>();
        String sql = "SELECT * FROM video WHERE category = ?";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setString(1, category);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Video video = new Video(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("category"),
                        rs.getString("file_path"),
                        rs.getString("uploaded_by")
                );
                videos.add(video);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return videos;
    }

    @Override
    public boolean insertVideo(String title, String description, String category, String file_path, String uploaded_by) {
        String sql = "INSERT INTO video (title, description, category, file_path, uploaded_by) VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setString(1, title);
            stmt.setString(2, description);
            stmt.setString(3, category);
            stmt.setString(4, file_path);
            stmt.setString(5, uploaded_by);

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean updateVideo(String id, String title, String description, String category, String file_path, String uploaded_by) {
        String sql = "UPDATE video SET title = ?, description = ?, category = ?, file_path = ?, uploaded_by = ? WHERE id = ?";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setString(1, title);
            stmt.setString(2, description);
            stmt.setString(3, category);
            stmt.setString(4, file_path);
            stmt.setString(5, uploaded_by);
            stmt.setInt(6, Integer.parseInt(id));  // Ensure you're parsing the ID as an integer

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public  boolean deleteVideo(String id) {
        String sql = "DELETE FROM video WHERE id = ?";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, Integer.parseInt(id));  // Ensure you're parsing the ID as an integer

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public List<Video> getVideoDetails(String id) {
        List<Video> videoList = new ArrayList<>();
        String sql = "SELECT * FROM video WHERE id = ?";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, Integer.parseInt(id));  // Ensure you're parsing the ID as an integer
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Video video = new Video(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("category"),
                        rs.getString("file_path"),
                        rs.getString("uploaded_by")
                );
                videoList.add(video);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return videoList;
    }
    

    
    
 }
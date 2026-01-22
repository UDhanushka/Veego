  package service;

import model.Video;  // Ensure you're importing the correct Video class from model
import java.util.List;

public interface VideoService {
    List<Video> getVideosByCategory(String category);
    boolean insertVideo(String title, String description, String category, String file_path, String uploaded_by);
    boolean updateVideo(String id, String title, String description, String category, String file_path, String uploaded_by);
    boolean deleteVideo(String id);
	List<Video> getVideoDetails(String id);

	
}



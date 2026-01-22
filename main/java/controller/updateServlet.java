package controller;

import service.VideoService;
import model.Video;
import service.VideoDBUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class updateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get parameters from the request
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        String file_path = request.getParameter("file_path");
        String uploaded_by = request.getParameter("uploaded_by");

        // Backend Validation
        boolean isValid = true;
        StringBuilder errorMessage = new StringBuilder();

        if (title == null || title.trim().length() < 3 || title.length() > 100) {
            isValid = false;
            errorMessage.append("Title must be between 3 and 100 characters.<br>");
        }

        if (description == null || description.trim().length() < 10 || description.length() > 1000) {
            isValid = false;
            errorMessage.append("Description must be between 10 and 1000 characters.<br>");
        }

        if (category == null || category.trim().isEmpty()) {
            isValid = false;
            errorMessage.append("Category cannot be empty.<br>");
        }

        if (file_path == null || !file_path.endsWith(".mp4")) {
            isValid = false;
            errorMessage.append("Only .mp4 files are allowed.<br>");
        }

        if (uploaded_by == null || uploaded_by.trim().length() < 3) {
            isValid = false;
            errorMessage.append("Uploader name must be at least 3 characters.<br>");
        }

        // If validation fails, return to the form with error messages
        if (!isValid) {
            request.setAttribute("errorMessage", errorMessage.toString());
            request.setAttribute("id", id);
            request.setAttribute("title", title);
            request.setAttribute("description", description);
            request.setAttribute("category", category);
            request.setAttribute("file_path", file_path);
            request.setAttribute("uploaded_by", uploaded_by);

            RequestDispatcher dispatcher = request.getRequestDispatcher("update.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // If valid, proceed with update
        VideoService service = new VideoDBUtil();
        boolean isUpdated = service.updateVideo(id, title, description, category, file_path, uploaded_by);

        if (isUpdated) {
        	List<Video> categoryVideos = service.getVideosByCategory(category); // get all videos in same category
        	request.setAttribute("VideoDetails", categoryVideos);
        	request.setAttribute("successMessage", "Video updated successfully.");
        	RequestDispatcher dispatcher = request.getRequestDispatcher("videoaccount.jsp");
        	dispatcher.forward(request, response);
        }

        else {
        	List<Video> categoryVideos = service.getVideosByCategory(category);
        	request.setAttribute("VideoDetails", categoryVideos);
        	request.setAttribute("errorMessage", "Video update failed. Please try again.");
        	RequestDispatcher dispatcher = request.getRequestDispatcher("videoaccount.jsp");
        	dispatcher.forward(request, response);
        }

    }
}

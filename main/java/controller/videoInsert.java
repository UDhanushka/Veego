package controller;

import service.VideoService;
import service.VideoDBUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class videoInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        String file_path = request.getParameter("file_path");
        String uploaded_by = request.getParameter("uploaded_by");

        // Backend Validation
        boolean isValid = true;
        String errorMessage = "";

        if (title == null || title.trim().length() < 3 || title.length() > 100) {
            isValid = false;
            errorMessage += "Title must be between 3 and 100 characters.<br>";
        }

        if (description == null || description.trim().length() < 10 || description.length() > 1000) {
            isValid = false;
            errorMessage += "Description must be between 10 and 1000 characters.<br>";
        }

        if (category == null || category.trim().isEmpty()) {
            isValid = false;
            errorMessage += "Category cannot be empty.<br>";
        }

        if (file_path == null || !file_path.endsWith(".mp4")) {
            isValid = false;
            errorMessage += "Only .mp4 files are allowed.<br>";
        }

        if (uploaded_by == null || uploaded_by.trim().length() < 3) {
            isValid = false;
            errorMessage += "Uploader name must be at least 3 characters.<br>";
        }

        if (!isValid) {
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher dispatcher = request.getRequestDispatcher("insert.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Insert video
        VideoService service = new VideoDBUtil();
        boolean isInserted = service.insertVideo(title, description, category, file_path, uploaded_by);

        if (isInserted) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Unsuccess.jsp");
            dispatcher.forward(request, response);
        }
    }
}
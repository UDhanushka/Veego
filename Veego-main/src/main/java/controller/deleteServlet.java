package controller;

import service.VideoService;
import model.Video;
import service.VideoDBUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class deleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");

        // Validation: check if ID is present and numeric
        if (id == null || id.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Invalid video ID. Cannot proceed with deletion.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("videoaccount.jsp");
            dispatcher.forward(request, response);
            return;
        }

        try {
            Integer.parseInt(id); // Try parsing to ensure it's a valid integer
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Video ID must be a number.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("videoaccount.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Proceed with deletion
        VideoService service = new VideoDBUtil();
        boolean isDeleted = service.deleteVideo(id);

        if (isDeleted) {
            response.sendRedirect("insert.jsp");
        } else {
            List<Video> videoDetails = service.getVideoDetails(id);
            request.setAttribute("VideoDetails", videoDetails);
            request.setAttribute("errorMessage", "Video deletion failed. Try again.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("videoaccount.jsp");
            dispatcher.forward(request, response);
        }
    }
}

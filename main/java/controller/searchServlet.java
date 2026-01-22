package controller;

import service.VideoService;
import model.Video;
import service.VideoDBUtil;



import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class searchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String category = request.getParameter("category");

        VideoService service = new VideoDBUtil();
        List<Video> videoDetails = service.getVideosByCategory(category);

        request.setAttribute("VideoDetails", videoDetails);

        RequestDispatcher dispatcher = request.getRequestDispatcher("videoaccount.jsp");
        dispatcher.forward(request, response);
    }
}


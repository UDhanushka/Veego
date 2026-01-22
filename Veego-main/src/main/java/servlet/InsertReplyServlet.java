package servlet;

import service.ReplyService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/insertReply")
public class InsertReplyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int commentId = Integer.parseInt(request.getParameter("commentId"));
        String content = request.getParameter("content");

        if (ReplyService.addReply(commentId, content)) {
            response.sendRedirect("comment.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
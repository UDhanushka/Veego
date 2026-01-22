package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import service.CommentService;

import java.io.IOException;
@WebServlet("/editComment")
public class EditCommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String content = request.getParameter("content");

        boolean isUpdated = CommentService.updateComment(id, content);

        if (isUpdated) {
            response.sendRedirect("comment.jsp"); // or wherever your JSP is
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}


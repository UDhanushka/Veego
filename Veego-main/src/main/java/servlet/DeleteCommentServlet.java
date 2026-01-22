package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import service.CommentService;

import java.io.IOException;


@WebServlet("/deleteComment")
public class DeleteCommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        boolean isDeleted = CommentService.deleteComment(id);

        if (isDeleted) {
            response.sendRedirect("comment.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
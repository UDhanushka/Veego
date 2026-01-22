package servlet;

import model.Comment;
import service.CommentService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/usercomments")
public class UserCommentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get userId from session (or you can get from request parameter if you want to view others)
        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) {
            response.sendRedirect("login.jsp"); // or show error
            return;
        }

        List<Comment> userComments = CommentService.getCommentsByUserId(userId);
        request.setAttribute("userComments", userComments);

        RequestDispatcher dis = request.getRequestDispatcher("usercomments.jsp");
        dis.forward(request, response);
    }
}

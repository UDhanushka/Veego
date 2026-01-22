package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.Comment;
import service.CommentService;

@WebServlet("/commentservlet")
public class CommentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handles POST requests (for comment submission)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the comment content from the form
        String content = request.getParameter("content");

        // Get the logged-in user's ID from the session
        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId");

        // If user not logged in
        if (userId == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Create a Comment object
        Comment comment = new Comment(content, userId);

        // Insert the comment into the database
        boolean isInserted = CommentService.insertComment(comment);

        // Get updated comments list
        List<Comment> userComments = CommentService.getCommentsByUserId(userId);
        request.setAttribute("userComments", userComments);

        if (isInserted) {
            // Forward to unified comments.jsp with updated comment list
            RequestDispatcher dis = request.getRequestDispatcher("comment.jsp");
            dis.forward(request, response);
        } else {
            // On failure, forward with error message
            request.setAttribute("errorMessage", "Failed to post the comment.");
            RequestDispatcher dis = request.getRequestDispatcher("comment.jsp");
            dis.forward(request, response);
        }
    }
}

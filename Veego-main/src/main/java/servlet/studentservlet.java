package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.studentModel;
import service.studentservices;


@WebServlet("/studentservlet")
public class studentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public studentservlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    studentModel std = new studentModel();
	    
	    std.setName(request.getParameter("name"));
	    std.setUsername(request.getParameter("username"));  // ✅ Correct
	    std.setEmail(request.getParameter("email"));        // ✅ Correct
	    std.setPass(request.getParameter("password"));

	    studentservices ser = new studentservices();
	    ser.InsertData(std);

	    RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
	    dis.forward(request, response);
	}


}

package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Customer;
import service.customerservice;

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		
		try {
			List<Customer> cusDetails = customerservice.validate(userName, pass);
			request.setAttribute("cusDetails", cusDetails);
			
			 Customer user = cusDetails.get(0);
			
          // Example login code snippet
             HttpSession session = request.getSession();
             session.setAttribute("userId", user.getId());

			
             // Optional: you can also store the whole user object or username
             session.setAttribute("username", user.getUsername());
             
			RequestDispatcher dis = request.getRequestDispatcher("comment.jsp");
			dis.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
}


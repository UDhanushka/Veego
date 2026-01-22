package user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = "user";
		String confirmPassword = request.getParameter("confirmPassword");
		
		if(password.equals(confirmPassword)) {
			boolean isTrue = UserDBUtil.insertcustomer(name, email, password, role);
		
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
				dis.forward(request, response);
			}
			else {
				request.setAttribute("errorMsg", "Registration failed. Please try again.");
				RequestDispatcher dis2 = request.getRequestDispatcher("registration.jsp");
				dis2.forward(request, response);
			}
		}
		else {
			request.setAttribute("errorMsg", "Password do not match");
			RequestDispatcher dis2 = request.getRequestDispatcher("registration.jsp");
			dis2.forward(request, response);
			
		}
	}

}

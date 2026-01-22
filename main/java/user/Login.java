package user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		try {
			List<User> userDetails = UserDBUtil.validate(email, password);
			
			 if (!userDetails.isEmpty()) {
	                User loggedInUser = userDetails.get(0);
	                
	                
	                request.setAttribute("userDetails", userDetails);
	                // Redirect based on role
	               
	               RequestDispatcher dis = request.getRequestDispatcher(loggedInUser.getHomePage());
          			dis.forward(request,response);

			 }
			 else {
					request.setAttribute("errorMsg", "Login failed. Please try again.");
					RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
					dis.forward(request, response);
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}

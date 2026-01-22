package com.advertisement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdRequestServlet")
public class AdRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String mediaUrl = request.getParameter("media_url");
        String contact = request.getParameter("contact");
        int userId = Integer.parseInt(request.getParameter("user_id"));
		
		boolean isTrue = advertisementDBUtil.insertRequest(title, description, mediaUrl, contact, userId);
		
		if(isTrue) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('" + alertMessage + "');  window.location.href='RequestsGetAll'</script>");
		} else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("AdUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}
}

package com.advertisement;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adDeleteServlet")
public class adDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public adDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int id = request.getParameter("id");
		int id = Integer.parseInt(request.getParameter("id"));
		boolean isTrue;
		isTrue = advertisementDBUtil.deleteData(id);
		
		if(isTrue == true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script> alert('" +alertMessage+"');  window.location.href='GetAllAds'</script>");
			
		}else {
			
			List<advertisement> adDetails = advertisementDBUtil.getById(id);
			request.setAttribute("adDetails", adDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
		
		}

}

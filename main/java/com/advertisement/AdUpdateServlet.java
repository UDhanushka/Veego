package com.advertisement;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdUpdateServlet")
public class AdUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int adId = Integer.parseInt(request.getParameter("id"));
		//String adId = request.getParameter("id");
		String title = request.getParameter("title");
		String media_Url = request.getParameter("media-url");
		String position = request.getParameter("position");
		String start_Date = request.getParameter("start-date");
		String end_Date = request.getParameter("end-date");
		String status = request.getParameter("status");
		
		boolean isTrue;
		isTrue = advertisementDBUtil.updatedata(adId, title, media_Url, position, start_Date, end_Date, status);
		
		if(isTrue == true) {
			List<advertisement> adDetails = advertisementDBUtil.getById(adId);
			request.setAttribute("adDetails", adDetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('" +alertMessage+"');  window.location.href='GetAllAds'</script>");
			//RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			//dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("AdUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}

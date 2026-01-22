package com.advertisement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/createAd")
public class createAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public createAd() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String mediaUrl = request.getParameter("media-url");
		//String mediaUrl = request.getParameter("media_url").replace("\\", "/"); // Convert any backslashes
		//advertisement.setmedia_url(mediaUrl);  // Store only "Ads/techAd.jpeg"

		String position = request.getParameter("position");
		String startDate = request.getParameter("start-date");
		String endDate = request.getParameter("end-date");
		String status = request.getParameter("status");
		
		
		
		boolean isTrue;
		
		isTrue = advertisementDBUtil.insertAdvertisement(title, mediaUrl, position, startDate, endDate, status, 0);
		
		if(isTrue == true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('" +alertMessage+"');  window.location.href='GetAllAds'</script>");
			//RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			//dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("AdUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}

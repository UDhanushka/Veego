package com.advertisement;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//here
//@WebServlet("/BannerAdServlet")
@WebServlet("/homePage")

public class BannerAdServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<advertisement> ads = advertisementDBUtil.getActiveAds(); // Only fetch active ads
        request.setAttribute("ads", ads);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("homePage.jsp");
		dispatcher.forward(request, response);
       
    }
}



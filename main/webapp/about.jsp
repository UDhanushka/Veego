<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | VeeGo Video Browsing System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F5F5F5;
            color: #333333;
        }

        .wrapper {
            min-height: 100%;
            display: flex;
            flex-direction: column;
        }

        .content {
            flex: 1;
            padding: 2rem;
        }

        header {
            background-color: #1E90FF;
            color: #FFFFFF;
            padding: 1rem 0;
            text-align: center;
        }

        header h1 {
            font-size: 2.5rem;
        }

        .about-container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .about-content h2 {
            color: #FF6347;
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .about-content p {
            font-size: 1.2rem;
            line-height: 1.6;
            color: #555555;
        }

        footer {
            background-color: #333333;
            color: white;
            padding: 1.5rem 0;
            text-align: center;
        }

        footer a {
            text-decoration: none;
            color: #FF6347;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <%@ include file="header.jsp" %>

        <div class="content">
            <div class="about-container">
                <div class="about-content">
                    <h2>About VeeGo Video Browsing System</h2>
                    <p>Welcome to VeeGo Video Browsing System, your go-to platform for discovering videos from various categories. Whether you're looking for educational content, entertainment, or the latest in technology and news, we have something for everyone!</p>
                    <p>Our mission is to provide an easy and enjoyable way to browse and discover the best video content online. We strive to deliver a seamless experience with a user-friendly interface and a wide range of video categories.</p>
                </div>
            </div>
        </div>

        <%@ include file="footer.jsp" %>
    </div>
</body>
</html>

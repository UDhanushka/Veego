<%@ page import="java.util.List" %>
<%@ page import="model.Comment" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Comments</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
        }

        .comment-section {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
        }

        h2 {
            font-size: 28px;
            margin-bottom: 25px;
            color: #333;
            border-bottom: 2px solid #eee;
            padding-bottom: 10px;
        }

        .comment {
            padding: 15px 0;
            border-bottom: 1px solid #e0e0e0;
        }

        .comment:last-child {
            border-bottom: none;
        }

        .comment-meta {
            font-size: 14px;
            color: #888;
            margin-bottom: 6px;
        }

        .comment-meta strong {
            color: #222;
        }

        .comment-content {
            font-size: 16px;
            line-height: 1.5;
            color: #444;
            background: #f9f9f9;
            padding: 12px;
            border-radius: 8px;
        }

        .no-comments {
            font-size: 16px;
            color: #666;
            text-align: center;
            padding: 40px 0;
        }
    </style>
    
    <title>VeeGo</title>
	<link rel ="stylesheet" href ="css/homeUser.css">
	<link rel ="stylesheet" href ="css/headerUser.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

<header>
    <nav>
        <a href="serach.jsp"><i class="fas fa-home"></i> Home</a>
        <a href="about.jsp"><i class="fas fa-info-circle"></i> About</a>
        <a href="contact.jsp"><i class="fas fa-envelope"></i> Contact</a>
        <a href="login.jsp"><i class="fas fa-right-to-bracket"></i> Login</a>
        <a href="insert.jsp"><i class="fas fa-upload"></i> Upload Video</a>
        <a href="insertRequest.jsp"><i class="fas fa-plus-circle"></i> Post an add</a>
    </nav>
</header>



<div class="sidebar">
			<div style="display: flex; align-items: center;">
 				<img src="images/logo.png" alt="VeeGo Logo" style="height: 40px; margin-right: 10px; background-color: white; border-radius: 5px;">
  				<h2 style="margin: 0; color: white;">VeegGo</h2>
			</div>
			<h4> Online Video Browsing System</h4><br>

			<a href="serach.jsp">Home</a>
			<a href="insert.jsp">Upload video</a>
			<a href="insertRequest.jsp">Create ads</a>
			<a href="usercomments">My comments</a>
			<a href="#">Watch history</a>
			
	</div>



<div class="container">
    <div class="comment-section">
        <h2>My Comments</h2>
        <%
            List<Comment> userComments = (List<Comment>) request.getAttribute("userComments");
            if (userComments != null && !userComments.isEmpty()) {
                for (Comment c : userComments) {
        %>
            <div class="comment">
                <div class="comment-meta">
                    <strong><%= c.getUsername() %></strong> on <%= c.getDate() %>
                </div>
                <div class="comment-content">
                    <%= c.getContent() %>
                </div>
            </div>
        <%
                }
            } else {
        %>
            <div class="no-comments">
                No comments posted yet.
            </div>
        <%
            }
        %>
    </div>
</div>
<div style="position: fixed; bottom: 20px; width: 290px; text-align: center; color: #aaa; font-size: 14px;">
    <hr color="grey">
    &copy; 2025 MyVideo
    <div class="social-icons">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
            <a href="#"><i class="fab fa-linkedin"></i></a>
     	</div>
  	</div>

</body>
</html>

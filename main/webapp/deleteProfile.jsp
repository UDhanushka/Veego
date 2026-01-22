<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
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
	<%
		String userId =request.getParameter("id");
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String password =request.getParameter("password");
	%>
	
	<form action="delete" method="post" class="section">
	<div class="prof-box">
	<h2>Delete my account</h2>
		<div class="prof-data">
			<label for="name">id</label>
			<input type="text" name="userid" value="<%= userId %>" readonly><br>
		</div>
		<div class="prof-data">
			<label for="name">Full Name</label>
			<input type="text" name="name" value="<%= name %>" readonly><br>
		</div>
		<div class="prof-data">
			<label for="name">Email address</label>
			<input type="email" name="email" value="<%= email %>"readonly><br>
		</div>
		<div class="prof-data">
			<label for="name">Password</label>
			<input type="password" name="pass" value="<%= password%>" readonly><br>
		</div>
		
		
		<input type="submit" name ="submit" value="Delete my account"  class= buttonEdit><br>
	</div>
	</form>
	
	<div class="sidebar">
			<div style="display: flex; align-items: center;">
 				<img src="images/logo.png" alt="VeeGo Logo" style="height: 40px; margin-right: 10px; background-color: white; border-radius: 5px;">
  				<h2 style="margin: 0; color: white;">VeeGo</h2>
			</div>
			
			<a href="serach.jsp">Home</a>
			<a href="insert.jsp">Upload video</a>
			<a href="insertRequest.jsp">Create ads</a>
			<a href="comment.jsp">My comments</a>
			<a href="#">Watch history</a>
			<a href="#">Logout</a>
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
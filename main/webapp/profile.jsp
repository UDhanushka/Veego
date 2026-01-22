<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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

	<div class="section">
		<div class="prof-box">
			<c:forEach var="login" items="${userDetails}">
			
				<c:set var="id" value="${login.id}"/>
				<c:set var="name" value="${login.name}"/>
				<c:set var="email" value="${login.email}"/>
				<c:set var="pass" value="${login.password}"/>
			
			      <h2>Profile Information</h2>
			        <div class="prof-data">
			          <label for="id">User id</label>
			          <input type="text" id="id" name="id" value="1">
			        </div>
			        <div class="prof-data">
			          <label for="name">Full Name</label>
			          <input type="text" id="name" name="name" value="udara">
			        </div>
			        <div class="prof-data">
			          <label for="email">Email Address</label>
			          <input type="email" id="email" name="email" value="udara@gmail.com">
			        </div>
			        <div class="prof-data">
			          <label for="password">Password</label>
			          <input type="password" id="password" name="password" value="udara">
			        </div>
			        <br><br>
				</c:forEach>
	
				
	
				<a href = "${updateUser}">
					<button>Update profile</button>
				</a>
	
	
	
				
				<a href = "${deleteUser}">
					<button>Delete profile</button>
				</a>
		</div>
	</div>
	
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
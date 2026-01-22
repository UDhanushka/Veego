<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VeeGo</title>
<link rel ="stylesheet" href ="css/authPages.css">
</head>
<body>
	<% 
    String errorMsg = (String) request.getAttribute("errorMsg");
    if (errorMsg != null) {
	%>
    <script>
        alert("<%= errorMsg %>");
    </script>
	<%
    }
	%>
	<div class= sec1>
	<form action="register" method="post">
	<h1>Register with us</h1>
	
	<input type="text" name=name placeholder= "Name" class="input-info" required><br><br>
	<input type="email" name=email placeholder= "Email address" class="input-info" required><br><br>
	<input type="password" name=password placeholder= "Password " class="input-info" required><br><br>
	<input type="password" name=confirmPassword placeholder= "Confirm password" class="input-info" required><br><br>
		
	<input type="submit" value="Register" name="submit" id="submit">
	
	<div class="text">
		<p>Already have an account?</p>
		<a href = "login.jsp">login here</a>
	</div>	
	
	</form>
	</div>
</body>
</html>
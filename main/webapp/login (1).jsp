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
		<form action="log" method ="post">
			<h1>Login</h1>
		
			<input type="email" name="email" placeholder="Email address"  class="input-info" required><br>
			<input type="password" name="pass" placeholder = "password"  class="input-info" required><br>
			
			<input type="submit" name= "submit" value="login" id="submit">
			
			<div class="text">
				<p>Don't have an account?</p>
				<a href = "registration.jsp">Register here</a>
			</div>	
		</form>
	</div>
</body>
</html>
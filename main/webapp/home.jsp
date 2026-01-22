<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page import="model.Customer"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>udara</h1>

<a href="login.jsp"><button type="button" class="btn btn-secondary disabled">Login</button></a>
<a href="reg.jsp"><button type="button" class="btn btn-secondary disabled">register</button></a>
<a href="update.jsp"><button type="button" class="btn btn-primary disabled">update</button></a>
<a href="delete.jsp"><button type="button" class="btn btn-secondary disabled">delete</button></a><br><br>

<a href="usercomments">View My Comments</a>





<c:forEach var="cus" items="${cusDetails}">
    ID: ${cus.id}<br>
    Name: ${cus.name}<br>
    Email: ${cus.email}<br>
    Username: ${cus.username}<br>
    Password: ${cus.pass}<br><br>
</c:forEach>



</body>
</html>
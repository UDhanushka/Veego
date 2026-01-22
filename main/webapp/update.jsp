<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>VeeGo Video Browsing System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 2rem;
        }

        h2 {
            text-align: center;
            margin-bottom: 2rem;
        }

        form {
            background: #ffffff;
            max-width: 500px;
            margin: auto;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-top: 1rem;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 0.5rem;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 0.3rem;
        }

        input[type="submit"] {
            margin-top: 1.5rem;
            padding: 0.7rem;
            width: 100%;
            background-color: #4CAF50;
            color: white;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>

	<%
			String id = request.getParameter("id");
	        String title = request.getParameter("title");
	        String description = request.getParameter("description");
	        String category = request.getParameter("category");
	        String file_path = request.getParameter("file_path");
	        String uploaded_by = request.getParameter("uploaded_by");
	
	%>

    <h2>Update Video Details</h2>
    
    
    <%
    String error = (String) request.getAttribute("errorMessage");
    if (error != null) {
    %>
    <div style="color:red; padding:10px; background:#ffe6e6; margin-bottom:10px;">
        <%= error %>
    </div>
    <%
        }
    %>
    
    <form action="update" method="post"> 
        <label for="id">Video ID</label>
        <input type="text" name="id" id="id" value="<%=id%>" readonly>

        <label for="title">Title</label>
        <input type="text" name="title" id="title" value="<%=title%>">

        <label for="description">Description</label>
        <textarea name="description" id="description" rows="4"><%=description%></textarea>


        <label for="category">Category</label>
        <input type="text" name="category" id="category" value="<%=category%>">

        <label for="file_path">File Path</label>
        <textarea name="file_path" id="file_path" rows="2"><%=file_path%></textarea>

        <label for="uploaded_by">Uploaded By</label>
        <input type="text" name="uploaded_by" id="uploaded_by" value="<%=uploaded_by%>">

        <input type="submit" value="UPDATE">
    </form>

<%@ include file="footer.jsp" %>


<script>
    document.querySelector("form").addEventListener("submit", function(e) {
        const title = document.getElementById("title").value.trim();
        const description = document.getElementById("description").value.trim();
        const category = document.getElementById("category").value.trim();
        const filePath = document.getElementById("file_path").value.trim();
        const uploadedBy = document.getElementById("uploaded_by").value.trim();

        if (title.length < 3 || title.length > 100) {
            alert("Title must be between 3 and 100 characters.");
            e.preventDefault();
        } else if (description.length < 10 || description.length > 1000) {
            alert("Description must be between 10 and 1000 characters.");
            e.preventDefault();
        } else if (category === "") {
            alert("Category cannot be empty.");
            e.preventDefault();
        } else if (!filePath.endsWith(".mp4")) {
            alert("Only .mp4 video files are allowed.");
            e.preventDefault();
        } else if (uploadedBy.length < 3) {
            alert("Uploader name must be at least 3 characters.");
            e.preventDefault();
        }
    });
</script>

</body>
</html>

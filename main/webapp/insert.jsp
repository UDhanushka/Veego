<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>VeeGo Video Browsing System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .header, .footer {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .main-content {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 160px); /* Adjust for header + footer height */
            padding: 40px 20px;
        }

        .container {
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        form label {
            display: block;
            margin-top: 15px;
            font-weight: 600;
            color: #444;
        }

        form input[type="text"],
        form textarea {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        form input[type="text"]:focus,
        form textarea:focus {
            border-color: #007bff;
            outline: none;
        }

        input[type="submit"] {
            margin-top: 25px;
            padding: 12px;
            width: 100%;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="main-content">
    <div class="container">
        <h2>Upload Video</h2>
        
        <%
        String error = (String) request.getAttribute("errorMessage");
        if (error != null) {
        %>
        <div style="color: red; padding: 10px; border: 1px solid red; margin-bottom: 10px; background-color: #ffe6e6;">
            <%= error %>
        </div>
        <%
           }
        %>
        
        
        
        <form action="upload" method="post">
    <label for="title">Title</label>
    <input type="text" name="title" id="title" required value="<%= request.getParameter("title") != null ? request.getParameter("title") : "" %>">

    <label for="description">Description</label>
    <textarea name="description" id="description" rows="4" required><%= request.getParameter("description") != null ? request.getParameter("description") : "" %></textarea>

    <label for="category">Category</label>
    <input type="text" name="category" id="category" required value="<%= request.getParameter("category") != null ? request.getParameter("category") : "" %>">

    <label for="file_path">File Path</label>
    <textarea name="file_path" id="file_path" rows="2" required><%= request.getParameter("file_path") != null ? request.getParameter("file_path") : "" %></textarea>

    <label for="uploaded_by">Uploaded By</label>
    <input type="text" name="uploaded_by" id="uploaded_by" required value="<%= request.getParameter("uploaded_by") != null ? request.getParameter("uploaded_by") : "" %>">

    <input type="submit" value="Upload Video">
</form>

    </div>
</div>

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
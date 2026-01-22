<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Video - VeeGo Video Browsing System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f9f9f9;
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

        h2 {
            color: #c00;
            text-align: center;
        }

        form {
            width: 100%;
            max-width: 600px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #aaa;
            border-radius: 5px;
            background-color: #f1f1f1;
        }

        input[type="submit"] {
            margin-top: 20px;
            background-color: #d9534f;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #c9302c;
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

<div class="main-content">
    <form action="delete" method="post"> 
        <h2>Confirm Video Deletion</h2>
        
       

        <label for="id">Video ID</label>
        <input type="text" name="id" id="id" value="<%=id%>" readonly>

        <label for="title">Title</label>
        <input type="text" name="title" id="title" value="<%=title%>" readonly>

        <label for="description">Description</label>
        <textarea name="description" id="description" rows="3" readonly><%=description%></textarea>

        <label for="category">Category</label>
        <input type="text" name="category" id="category" value="<%=category%>" readonly>

        <label for="file_path">File Path</label>
        <textarea name="file_path" id="file_path" rows="2" readonly><%=file_path%></textarea>

        <label for="uploaded_by">Uploaded By</label>
        <input type="text" name="uploaded_by" id="uploaded_by" value="<%=uploaded_by%>" readonly>

        <input type="submit" value="Confirm Delete">
    </form>
</div>

<%@ include file="footer.jsp" %>


<script>
    document.querySelector("form").addEventListener("submit", function(e) {
        const confirmed = confirm("Are you sure you want to delete this video?");
        if (!confirmed) {
            e.preventDefault();
        }
    });
</script>
</body>
</html>

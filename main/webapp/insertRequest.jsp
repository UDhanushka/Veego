<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Advertisement Request Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 60px;
        }
        form {
            max-width: 500px;
            margin: auto;
            padding: 50px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        
        h2{
        	text-align: center;
        }
        
        input, textarea{
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            margin-bottom: 16px;
            border-radius: 5px;
            border: 1px solid #aaa;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h2>Post a Request</h2>
    <form action="AdRequestServlet" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required>

        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="4" required></textarea>

        <label for="media_url">Media URL:</label>
        <input type="text" id="media_url" name="media_url" placeholder="e.g., link to an image or video" required>

        <label for="contact">Contact Info:</label>
        <input type="text" id="contact" name="contact" placeholder="e.g., email or phone" required>

        <label for="user_id">User ID:</label>
        <input type="text" id="user_id" name="user_id" required>

        <input type="submit" value="Submit Request">
    </form>


</body>
</html>

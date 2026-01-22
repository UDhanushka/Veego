<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>VeeGo | Browse by Category</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 2rem;
        }

        form {
            background-color: #fff;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            max-width: 500px;
            width: 100%;
            margin-bottom: 2rem;
        }

        h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #333;
        }

        label {
            font-weight: bold;
            margin-bottom: 0.5rem;
            display: block;
        }

        select {
            width: 100%;
            padding: 0.75rem;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 1.5rem;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #FF0000;
            color: white;
            padding: 0.75rem;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #cc0000;
        }

        .video-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            width: 100%;
            max-width: 1000px;
        }

        .video-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            overflow: hidden;
            padding: 1rem;
            text-align: center;
        }

        .video-card video {
            width: 100%;
            border-radius: 8px;
        }

        .video-title {
            margin-top: 0.5rem;
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="homePage.jsp" %>

<div class="container">

    <!-- Search Form -->
    <form action="search" method="post">
        <h2><i class="fas fa-video"></i> Search Videos by Category</h2>

        <label for="category">Select a Category</label>
        <select name="category" id="category" required>
        	<option value="" disabled selected>-- Choose Category --</option>
            <option value="Nature">🌳 Nature</option>
			<option value="Food">🍔 Food</option>
			<option value="Adventures">🏞️ Adventures</option>
			<option value="Wild Life">🐾 Wild Life</option>
			<option value="Fitness">🏋️‍♂️ Fitness</option>
			<option value="Technology">💻 Technology</option>
			<option value="Sports">⚽ Sports</option>
			<option value="News">📰 News</option>
			
        </select>

        <input type="submit" value="Browse Videos">
    </form>

    <%@ include file="videoDisplay.jsp" %>

</div>

<%@ include file="footer.jsp" %>
</body>
</html>


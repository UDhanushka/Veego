<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>VeeGo Video Browsing System</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
        }

        body {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            background-color: #ffe7e7;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        .content {
            padding-top: 100px;
            flex: 1;
        }

        h1 {
            color: #dc3545;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        footer {
            background-color: #007bff;
            color: white;
            padding: 20px;
        }
    </style>
</head>
<body>
	 <%@ include file="header.jsp" %>
	 
	 
    <h1>✅ Video Uploaded Successfully!</h1>
    <p><a href="serach.jsp">Go Back to Home</a></p>
    
    <%@ include file="footer.jsp" %>
</body>
</html>




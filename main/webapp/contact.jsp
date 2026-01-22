<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | VeeGo Video Browsing System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #F5F5F5;
            color: #333333;
        }

        .contact-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }

        /* Header Styles */
        header {
            background-color: #1E90FF;
            color: #FFFFFF;
            padding: 1rem 0;
            text-align: center;
        }

        header h1 {
            font-size: 2.5rem;
        }

        /* Contact Form Styles */
        .contact-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .contact-header h1 {
            font-size: 3rem;
            color: #FF6347;
        }

        .contact-header p {
            font-size: 1.2rem;
            color: #777777;
        }

        .contact-form {
            display: flex;
            justify-content: space-between;
            margin-top: 3rem;
        }

        .contact-form .form-section {
            width: 48%;
        }

        .form-section h2 {
            font-size: 2rem;
            color: #FF6347;
            margin-bottom: 1rem;
        }

        .form-section input, .form-section textarea {
            width: 100%;
            padding: 1rem;
            margin-bottom: 1rem;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 1rem;
            background-color: #FFFFFF;
        }

        .form-section input[type="submit"] {
            background-color: #FF6347;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .form-section input[type="submit"]:hover {
            background-color: #FF4500;
        }

        .contact-info {
            width: 48%;
        }

        .contact-info ul {
            list-style: none;
            padding: 0;
        }

        .contact-info ul li {
            font-size: 1rem;
            color: #555555;
            margin-bottom: 1rem;
        }

        .contact-info ul li i {
            color: #32CD32;
            margin-right: 10px;
        }

        /* Footer Styles */
        footer {
            background-color: #333333;
            color: white;
            padding: 1.5rem 0;
            text-align: center;
        }

        footer a {
            text-decoration: none;
            color: #FF6347;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %> <!-- Include the header -->

<div class="contact-container">
    <div class="contact-header">
        <h1>Contact Us</h1>
        <p>If you have any questions, need support, or just want to say hello, reach out to us!</p>
    </div>

    <div class="contact-form">
        <!-- Contact Form Section -->
        <div class="form-section">
            <h2>Get in Touch</h2>
            <form action="contact-form-handler" method="POST">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
                <input type="submit" value="Send Message">
            </form>
        </div>

        <!-- Contact Information Section -->
        <div class="contact-info">
            <h2>Our Contact Information</h2>
            <ul>
                <li><i class="fas fa-phone-alt"></i> Phone: +94 345567775</li>
                <li><i class="fas fa-envelope"></i> Email: <a href="mailto:support@veego.com">support@veego.com</a></li>
                <li><i class="fas fa-map-marker-alt"></i> Address: 123 Street, Hawlock Street, Colombo , Sri Lanka</li>
            </ul>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %> <!-- Include the footer -->

</body>
</html>

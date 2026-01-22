<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login | My Video App</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background: linear-gradient(135deg, #2c3e50, #3498db);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-container {
        background-color: rgba(255, 255, 255, 0.95);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 400px;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }

    h2 {
        margin-bottom: 25px;
        color: #2c3e50;
        font-size: 28px;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 12px 15px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 8px;
        transition: border-color 0.3s;
        font-size: 16px;
    }

    input[type="text"]:focus, input[type="password"]:focus {
        border-color: #3498db;
        outline: none;
    }

    button {
        width: 100%;
        padding: 12px;
        background: #3498db;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 15px;
        transition: background 0.3s;
    }

    button:hover {
        background: #2980b9;
    }

    .link-btn {
        background: transparent;
        color: #3498db;
        margin-top: 10px;
        text-decoration: underline;
        font-size: 14px;
        border: none;
        cursor: pointer;
    }

    .secondary-btn {
        background: #e0e0e0;
        color: #2c3e50;
        font-weight: 500;
        margin-top: 10px;
    }

    .secondary-btn:hover {
        background: #d5d5d5;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>

<div class="login-container">
    <h2>Welcome Back</h2>
    <form action="loginservlet" method="post">
        <input type="text" name="username" placeholder="Enter your username" required>
        <input type="password" name="password" placeholder="Enter your password" required>
        <button type="submit">Login</button>
    </form>

    <form action="reg.jsp" method="get">
        <button class="secondary-btn" type="submit">Don't have an account? Sign Up</button>
    </form>

    <form action="home.jsp" method="get">
        <button class="link-btn" type="submit">← Back to Home</button>
    </form>
</div>

</body>
</html>

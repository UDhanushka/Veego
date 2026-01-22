<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>User Registration</title>
  <style>
    * {
      box-sizing: border-box;
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    .container {
      background: #ffffff;
      padding: 40px 30px;
      border-radius: 15px;
      box-shadow: 0 15px 35px rgba(0,0,0,0.2);
      width: 100%;
      max-width: 500px;
      animation: fadeIn 0.8s ease;
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #333;
      font-size: 28px;
    }

    .form-group {
      margin-bottom: 18px;
    }

    label {
      display: block;
      margin-bottom: 6px;
      font-weight: 600;
      color: #444;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 15px;
      transition: border-color 0.3s;
    }

    input:focus {
      border-color: #2575fc;
      outline: none;
    }

    .form-group.inline {
      display: flex;
      gap: 15px;
    }

    .form-group.inline .form-group {
      flex: 1;
    }

    button, input[type="submit"] {
      width: 100%;
      padding: 14px;
      background: #2575fc;
      color: white;
      font-size: 16px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-weight: bold;
      margin-top: 10px;
      transition: background 0.3s ease;
    }

    button:hover, input[type="submit"]:hover {
      background: #1b60d6;
    }

    .small-text {
      font-size: 13px;
      color: #666;
      text-align: center;
      margin-top: 12px;
    }

    .link-btn {
      background: transparent;
      border: none;
      color: #2575fc;
      text-decoration: underline;
      cursor: pointer;
      font-size: 14px;
      display: block;
      text-align: center;
      margin-top: 12px;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Create Your Account</h2>
    <form action="${pageContext.request.contextPath}/studentservlet" method="post">
      <div class="form-group">
        <label for="fullname">Full Name</label>
        <input type="text" id="fullname" name="name" placeholder="e.g. John Doe" required />
      </div>

      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Choose a username" required />
      </div>

      <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" id="email" name="email" placeholder="example@email.com" required />
      </div>

      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Create a strong password" required />
      </div>

      <input type="submit" value="Register" />

      <p class="small-text">
        By registering, you agree to our Terms and Privacy Policy.
      </p>

      <a href="login.jsp" class="link-btn">Already have an account? Log In</a>
    </form>
  </div>
</body>
</html>

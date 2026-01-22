<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Ad Form</title>
	<style>
  * {
    box-sizing: border-box;
  }
  body {
    margin: 0;
    font-family: 'Inter', sans-serif;
    background-color: #f7f9fb;
    color: #0a142f;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  .container {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 8px 20px rgb(10 20 47 / 0.1);
    width: 100%;
    max-width: 320px;
    padding: 32px 24px 40px 24px;
  }
  h2 {
    font-weight: 700;
    font-size: 20px;
    margin: 0 0 8px 0;
    text-align: center;
  }
  p.subtitle {
    font-weight: 400;
    font-size: 12px;
    color: #4a5568;
    margin: 0 0 24px 0;
    text-align: center;
  }
  label {
    display: block;
    font-size: 12px;
    margin-bottom: 6px;
    color: #4a5568;
  }
  input[type="text"],
  input[type="url"],
  select,
  input[type="date"] {
    width: 100%;
    padding: 8px 10px;
    font-size: 12px;
    border: 1px solid #cbd5e0;
    border-radius: 4px;
    outline-offset: 2px;
    outline-color: transparent;
    transition: outline-color 0.2s ease;
  }
  input[type="text"]:focus,
  input[type="url"]:focus,
  select:focus,
  input[type="date"]:focus {
    outline-color: #5a55fa;
  }
  .date-group {
    display: flex;
    gap: 12px;
  }
  .date-group input {
    flex: 1;
  }
  .status-group {
    margin-top: 12px;
    display: flex;
    gap: 24px;
    font-size: 12px;
    color: #000;
  }
  .status-group label {
    display: flex;
    align-items: center;
    gap: 6px;
    cursor: pointer;
  }
  .status-group input[type="radio"] {
    width: 16px;
    height: 16px;
    cursor: pointer;
  }
  button {
    margin-top: 24px;
    width: 100%;
    background-color: #4c51bf;
    border: none;
    border-radius: 4px;
    color: #fff;
    font-size: 14px;
    padding: 10px 0;
    cursor: pointer;
    transition: background-color 0.2s ease;
  }
  button:hover,
  button:focus {
    background-color: #3c3fbf;
  }
  @media (max-width: 360px) {
    .container {
      max-width: 100%;
      margin: 0 12px;
      padding: 24px 16px 32px 16px;
    }
  }
</style>
</head>
<body>

	<%
		//int adId = Integer.parseInt(request.getParameter("id"));
		String adId = request.getParameter("id");
		String title = request.getParameter("title");
		String media_Url = request.getParameter("media_url");
		String position = request.getParameter("position");
		String start_Date = request.getParameter("start_date");
		String end_Date = request.getParameter("end_date");
		String status = request.getParameter("status");	
	%>

	<form class="container" aria-label="Update Ad Form" action="AdUpdateServlet" method="post">
    <h2>Update  Ad</h2>
    <p class="subtitle">Please fill in all required fields</p>
	
	<label for="ID">ID</label>
	<input type="text" id="id" name="id" value="<%=adId%>" readonly />
	
	<label for="title">Title</label>
	<input type="text" id="title" name="title" value="<%=title%>" placeholder="Enter media title" required />
	
	<label for="media-url">Media URL</label>
	<input type="url" id="media-url" name="media-url" value="<%=media_Url%>" required />
	
	<label for="position">Position</label>
	<select id="position" name="position" required>
	  <option value="" disabled>Select</option>
	  <option value="top" <%= "top".equals(position) ? "selected" : "" %>>Top</option>
	  <option value="middle" <%= "middle".equals(position) ? "selected" : "" %>>Middle</option>
	  <option value="bottom" <%= "bottom".equals(position) ? "selected" : "" %>>Bottom</option>
	</select>
	
	<label for="start-date">Start Date</label>
	<input type="date" id="start-date" name="start-date" value="<%=start_Date%>" />
	
	<label for="end-date">End Date</label>
	<input type="date" id="end-date" name="end-date" value="<%=end_Date%>" />
	
	<div class="status-group">
	  <label><input type="radio" name="status" value="active" <%= "active".equals(status) ? "checked" : "" %>> Active</label>
	  <label><input type="radio" name="status" value="inactive" <%= "inactive".equals(status) ? "checked" : "" %>> Inactive</label>
	  <label><input type="radio" name="status" value="scheduled" <%= "scheduled".equals(status) ? "checked" : "" %>> Scheduled</label>
	</div>


    <button type="submit" name="submit" value="Update Ad">Submit</button>
  </form>
</body>
</html>
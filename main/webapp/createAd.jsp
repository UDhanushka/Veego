<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Ad Form</title>
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
	<form class="container" aria-label="Create Ad Form" action= "createAd" method= "post">
    <h2>Create Ad</h2>
    <p class="subtitle">Please fill in all required fields</p>

    <label for="title">Title</label>
    <input type="text" id="title" name="title" placeholder="Enter media title" required />

    <label for="media-url" style="margin-top:16px;">Media URL</label>
    <input type="url" id="media-url" name="media-url" required />

    <label for="position" style="margin-top:16px;">Position</label>
    <select id="position" name="position" required>
      <option value="" selected disabled>Select</option>
      <option value="top">Top</option>
      <option value="middle">Middle</option>
      <option value="bottom">Bottom</option>
    </select>

    <div class="date-group" style="margin-top:16px;">
      <div>
        <label for="start-date">Start Date</label>
        <input type="date" id="start-date" name="start-date" />
      </div>
      <div>
        <label for="end-date">End Date</label>
        <input type="date" id="end-date" name="end-date" />
      </div>
    </div>

    <label style="margin-top:16px;">Status</label>
    <div class="status-group" role="radiogroup" aria-labelledby="status-label">
      <label><input type="radio" name="status" value="active" checked /> Active</label>
      <label><input type="radio" name="status" value="inactive" /> Inactive</label>
      <label><input type="radio" name="status" value="scheduled" /> Scheduled</label>
    </div>

    <button type="submit" name="submit" value="Create Ad">Submit</button>
  </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VeeGo Video Browsing System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        padding: 20px;
    }
    h2 {
        color: #333;
    }
    .video-card {
        background: white;
        border: 1px solid #ccc;
        border-radius: 8px;
        padding: 20px;
        margin-bottom: 20px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    table {
        width: 100%;
        margin-bottom: 10px;
    }
    td {
        padding: 8px;
        vertical-align: top;
    }
    .video-actions {
        margin-top: 10px;
    }
    .video-actions input {
        padding: 8px 16px;
        margin-right: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .video-actions input[name="Update"] {
        background-color: #4CAF50;
        color: white;
    }
    .video-actions input[name="Delete"] {
        background-color: #f44336;
        color: white;
    }
</style>
<script>
    function confirmDelete(url) {
        if (confirm("Are you sure you want to delete this video?")) {
            window.location.href = url;
        }
    }
</script>
</head>
<body>
<%@ include file="header.jsp" %>

<h2>All Uploaded Videos</h2>

<c:forEach var="videos" items="${VideoDetails}">
    <div class="video-card">
        <table>
            <tr><td><strong>Video ID</strong></td><td>${videos.id}</td></tr>
            <tr><td><strong>Title</strong></td><td>${videos.title}</td></tr>
            <tr><td><strong>Description</strong></td><td>${videos.description}</td></tr>
            <tr><td><strong>Category</strong></td><td>${videos.category}</td></tr>
            <tr><td><strong>Uploaded By</strong></td><td>${videos.uploaded_by}</td></tr>
            <tr>
                <td><strong>Preview</strong></td>
                <td>
                    <video width="1280" height="720" controls>
                        <source src="${pageContext.request.contextPath}/${videos.file_path}" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </td>
            </tr>
        </table>

        <!-- Buttons -->
        <div class="video-actions">
            <c:url value="update.jsp" var="videoUpdate">
                <c:param name="id" value="${videos.id}" />
                <c:param name="title" value="${videos.title}" />
                <c:param name="description" value="${videos.description}" />
                <c:param name="category" value="${videos.category}" />
                <c:param name="uploaded_by" value="${videos.uploaded_by}" />
                <c:param name="file_path" value="${videos.file_path}" />
            </c:url>
            <a href="${videoUpdate}">
                <input type="button" name="Update" value="Update Video Details" />
            </a>

            <c:url value="delete.jsp" var="deleteVideo">
                <c:param name="id" value="${videos.id}" />
                <c:param name="title" value="${videos.title}" />
                <c:param name="description" value="${videos.description}" />
                <c:param name="category" value="${videos.category}" />
                <c:param name="uploaded_by" value="${videos.uploaded_by}" />
                <c:param name="file_path" value="${videos.file_path}" />
            </c:url>
            <input type="button" name="Delete" value="Delete the Video" onclick="confirmDelete('${deleteVideo}')" />
        </div>
    </div>
</c:forEach>


<%@ include file="footer.jsp" %>
</body>
</html>

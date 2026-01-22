<%@ page import="java.util.List" %>
<%@ page import="model.Comment" %>
<%@ page import="model.Reply" %>
<%@ page import="service.CommentService" %>
<%@ page import="service.ReplyService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Comments</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f5f7fa;
        }
        .card {
            border-radius: 12px;
        }
        textarea {
            resize: none;
        }
        .reply-box {
            background-color: #f0f2f5;
            border-left: 4px solid #0d6efd;
            padding: 12px;
            margin-top: 10px;
            border-radius: 8px;
        }
        .reply-form, .edit-form, .edit-reply-form {
            animation: fadeIn 0.3s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-5px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body class="bg-light">
<%@ include file="header.jsp" %>

<div class="container py-5">
    <!-- Comment Form -->
    <div class="card shadow-sm mb-4 p-4">
        <h3 class="mb-3">💬 Share Your Thoughts</h3>
        <form action="commentservlet" method="post">
            <textarea name="content" class="form-control mb-3" rows="3" placeholder="Write your comment..." required></textarea>
            <button type="submit" class="btn btn-primary w-100">Post Comment</button>
        </form>
        <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="alert alert-danger mt-3" role="alert">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>
    </div>

    <!-- Comments Display -->
    <%
        List<Comment> comments = CommentService.getAllComments();
        if (comments != null && !comments.isEmpty()) {
            for (Comment c : comments) {
    %>
    <div class="card mb-4 shadow-sm">
        <div class="card-body">
            <div class="d-flex justify-content-between">
                <small class="text-muted"><%= c.getDate() %></small>
            </div>
            <p class="fs-5 mb-2"><%= c.getContent() %></p>

            <!-- Edit Comment Form -->
            <form action="editComment" method="post" class="edit-form d-none">
                <input type="hidden" name="id" value="<%= c.getId() %>">
                <textarea name="content" class="form-control mb-2" required><%= c.getContent() %></textarea>
                <button type="submit" class="btn btn-success btn-sm">Update</button>
            </form>

            <!-- Action Buttons -->
            <div class="mt-3">
                <button class="btn btn-outline-secondary btn-sm me-2" onclick="toggleEditForm(this)">Edit</button>

                <form action="deleteComment" method="post" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this comment?');">
                    <input type="hidden" name="id" value="<%= c.getId() %>">
                    <button type="submit" class="btn btn-outline-danger btn-sm">Delete</button>
                </form>

                <button class="btn btn-outline-primary btn-sm ms-2" onclick="toggleReplyForm('<%= c.getId() %>')">Reply</button>
            </div>

            <!-- Reply Form -->
            <form action="insertReply" method="post" class="reply-form d-none mt-3" id="reply-form-<%= c.getId() %>">
                <input type="hidden" name="commentId" value="<%= c.getId() %>">
                <textarea name="content" class="form-control mb-2" rows="2" placeholder="Write your reply..." required></textarea>
                <button type="submit" class="btn btn-primary btn-sm">Post Reply</button>
            </form>

            <!-- Replies -->
            <%
                List<Reply> replies = ReplyService.getReplies(c.getId());
                if (replies != null && !replies.isEmpty()) {
            %>
            <div class="mt-4 ps-3 border-start">
                <% for (Reply r : replies) { %>
                <div class="reply-box mb-2">
                    <small class="text-muted"><%= r.getDate() %></small>
                    <div><%= r.getContent() %></div>

                    <!-- Edit Reply Form -->
                    <form action="editReply" method="post" class="edit-reply-form d-none mt-2">
                        <input type="hidden" name="id" value="<%= r.getId() %>">
                        <textarea name="content" class="form-control mb-2" rows="2" required><%= r.getContent() %></textarea>
                        <button type="submit" class="btn btn-success btn-sm">Update</button>
                    </form>

                    <div class="mt-2">
                        <button class="btn btn-outline-secondary btn-sm me-2" onclick="toggleReplyEditForm(this)">Edit</button>

                        <form action="deleteReply" method="post" class="d-inline" onsubmit="return confirm('Delete this reply?');">
                            <input type="hidden" name="id" value="<%= r.getId() %>">
                            <button type="submit" class="btn btn-outline-danger btn-sm">Delete</button>
                        </form>
                    </div>
                </div>
                <% } %>
            </div>
            <% } %>
        </div>
    </div>
    <% } } else { %>
    <div class="text-center text-muted">
        <p>No comments yet. Be the first to post!</p>
    </div>
    <% } %>
</div>

<!-- JavaScript -->
<script>
function toggleReplyForm(commentId) {
    const form = document.getElementById("reply-form-" + commentId);
    if (form) form.classList.toggle("d-none");
}

function toggleEditForm(button) {
    const form = button.parentElement.previousElementSibling;
    if (form && form.classList.contains("edit-form")) {
        form.classList.toggle("d-none");
    }
}

function toggleReplyEditForm(button) {
    const form = button.parentElement.previousElementSibling;
    if (form && form.classList.contains("edit-reply-form")) {
        form.classList.toggle("d-none");
    }
}
</script>
<%@ include file="footer.jsp" %>
</body>
</html>

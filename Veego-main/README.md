# Veego - Video Sharing Platform

A Java-based web application for video sharing and management with user authentication, comments, replies, and advertisement features.

## Features

### User Management
- User registration and login
- Profile management (update/delete)
- Admin and normal user roles

### Video Management
- Upload and share videos
- Search videos
- Update and delete videos
- Video display and playback

### Comments & Replies
- Comment on videos
- Reply to comments
- Edit and delete comments/replies
- View user-specific comments

### Advertisement System
- Create and manage advertisements
- Banner ad display
- Ad requests and approval system
- Ad analytics

## Technology Stack

- **Backend:** Java Servlets, JSP
- **Database:** MySQL (JDBC)
- **Server:** Apache Tomcat
- **Frontend:** HTML, CSS, JavaScript

## Project Structure

```
├── src/main/
│   ├── java/
│   │   ├── com/advertisement/    # Advertisement servlets
│   │   ├── controller/           # Video controllers
│   │   ├── model/                # Data models
│   │   ├── service/              # Business logic
│   │   ├── servlet/              # Comment/reply servlets
│   │   ├── user/                 # User management
│   │   └── util/                 # Database utilities
│   └── webapp/
│       ├── WEB-INF/              # Configuration files
│       ├── css/                  # Stylesheets
│       ├── images/               # Static images
│       ├── uploaded_videos/      # User uploaded videos
│       └── *.jsp                 # JSP pages
```

## Setup Instructions

1. **Prerequisites**
   - Java JDK 8 or higher
   - Apache Tomcat 8.5 or higher
   - MySQL Server

2. **Database Configuration**
   - Create a MySQL database
   - Update database connection details in `DBConnect.java` files

3. **Deploy Application**
   - Build the project
   - Deploy the WAR file to Tomcat webapps directory
   - Start Tomcat server

4. **Access Application**
   - Open browser and navigate to `http://localhost:8080/Veego`

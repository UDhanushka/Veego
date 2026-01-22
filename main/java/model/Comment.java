package model;

import java.sql.Timestamp;

public class Comment {
    private int id;
    private String content;
    private int userId;
    
    private String username;
    private Timestamp date;

    // Constructors
    public Comment(int id, String content, Timestamp date) {
        this.id = id;
        this.content = content;
        this.date = date;
    }
    public Comment(String content, int userId, String username, Timestamp date) {
        this.content = content;
        this.userId = userId;
        this.username = username;
        this.date = date;
    }
    
    public Comment(int id, String content, Timestamp date, int userId, String username) {
        this.id = id;
        this.content = content;
        this.date = date;
        this.userId = userId;
        this.username = username;
    }
    public Comment(int id, String content) {
        this.id = id;
        this.content = content;
    }

    public Comment(String content, int userId) {
        this.content = content;
        this.userId = userId;
    }

    // Getters
    public int getId() { return id; }
    public String getContent() { return content; }
    public int getUserId() { return userId; }
    public String getUsername() { return username; }
    public Timestamp getDate() { return date; }

   
}

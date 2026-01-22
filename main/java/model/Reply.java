package model;

public class Reply {
    private int id;
    private int commentId;
    private String content;
    private String date;

    public Reply(int id, int commentId, String content, String date) {
        this.id = id;
        this.commentId = commentId;
        this.content = content;
        this.date = date;
    }

    public Reply(int commentId, String content) {
        this.commentId = commentId;
        this.content = content;
    }

    public int getId() { return id; }
    public int getCommentId() { return commentId; }
    public String getContent() { return content; }
    public String getDate() { return date; }

  
}

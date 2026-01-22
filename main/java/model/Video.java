package model;

public class Video {
    private int id;
    private String title;
    private String description;
    private String category;
    private String file_path;
    private String uploaded_by;

    public Video(int id, String title, String description, String category, String file_path, String uploaded_by) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.category = category;
        this.file_path = file_path;
        this.uploaded_by = uploaded_by;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getCategory() {
        return category;
    }

    public String getFile_path() {
        return file_path;
    }

    public String getUploaded_by() {
        return uploaded_by;
    }
}

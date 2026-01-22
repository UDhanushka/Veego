package com.advertisement;

public class AdRequest {
	
	
	private int id;
	private String title;
	private String description;
	private String mediaURL;
	private String contact;
	private int userId;
	
	public AdRequest(int id, String title, String description, String mediaURL, String contact, int userId) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.mediaURL = mediaURL;
		this.contact = contact;
		this.userId = userId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getMediaURL() {
		return mediaURL;
	}

	public void setMediaURL(String mediaURL) {
		this.mediaURL = mediaURL;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
	
	
	
	
	

}

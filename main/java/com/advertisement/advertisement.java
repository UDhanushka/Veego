package com.advertisement;

public class advertisement {
	
	private int id;
	private String title; 
	private String media_url; 
	private String position; 
	private String start_date;
	private String end_date;
	private String status;
	
	public advertisement() { }
	
	public advertisement(int id, String title, String media_url, String position, String start_date, String end_date,
			String status) {
		super();
		this.id = id;
		this.title = title;
		this.media_url = media_url;
		this.position = position;
		this.start_date = start_date;
		this.end_date = end_date;
		this.status = status;
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

	public String getMedia_url() {
		return media_url;
	}

	public void setMedia_url(String media_url) {
		this.media_url = media_url;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	
	

	 
}

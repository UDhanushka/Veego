package model;

public class Customer {
	private int id;
	private String name;
	private String username;
	private String email;
	private String pass;
	
	public Customer(int id, String name, String username, String email, String pass) {
		super();
		this.id = id;
		this.name = name;
		this.username = username;
		this.email = email;
		this.pass = pass;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getUsername() {
		return username;
	}

	public String getEmail() {
		return email;
	}

	public String getPass() {
		return pass;
	}

	
	

}

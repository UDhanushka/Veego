package user;

public class NormalUser extends User{

	public NormalUser(int id, String name, String email, String password) {
		super(id, name, email, password, "user");
	}
	
	@Override
	public String getHomePage() {
		return "home.jsp";
	}

}

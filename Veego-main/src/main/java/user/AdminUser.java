package user;

public class AdminUser extends User{
	public AdminUser(int id, String name, String email, String password) {
		super(id, name, email, password, "admin");
	}


	@Override
	public String getHomePage() {
		return "GetAllAds";
	}
}

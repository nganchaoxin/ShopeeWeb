package entity;

public class Users {
	private int id;
	private String username;
	private String password;
	private boolean role;
	
	public boolean getRole() {
		return role;
	}

	public void setLogin(boolean login) {
		this.role = login;
	}
	
	public Users() {
		
	}
	public Users( int id, String username, String password, boolean role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.role = role;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}

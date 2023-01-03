package entity;

public class Student {
	private String FirstName;
	private String lastName;
	private String email;

	public Student(String firstName, String lastName, String email) {
		this.FirstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "ListStudent [FirstName=" + FirstName + ", lastName=" + lastName + ", email=" + email + "]";
	}
	
	
}
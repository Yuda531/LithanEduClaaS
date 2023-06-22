import java.sql.Date;

public class UserBean {
	private String email;
	private String fullname;
	private String location;
	private String password;
	private Date date_register;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDate_register() {
		return date_register;
	}
	public void setDate_register(Date date_register) {
		this.date_register = date_register;
	}

}

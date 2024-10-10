package dto;

public class Admin {
	
	private int adminId;
	private String adminName;
	private String adminEmail;
	private long adminContact;
	private String adminPassword;
	
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public long getAdminContact() {
		return adminContact;
	}
	public void setAdminContact(long adminContact) {
		this.adminContact = adminContact;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public Admin(int adminId, String adminName, String adminEmail, long adminContact, String adminPassword) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminEmail = adminEmail;
		this.adminContact = adminContact;
		this.adminPassword = adminPassword;
	}
	
	
	
}

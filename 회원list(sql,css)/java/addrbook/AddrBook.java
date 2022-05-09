package addrbook;

public class AddrBook {
	// 멤버변수 선언
	private int ab_id;
	private String ab_firstname;
	private String ab_lastname;
	private String ab_email; 
	
	
	public int getAb_id() {
		return ab_id;
	}
	public void setAb_id(int ab_id) {
		this.ab_id = ab_id;
	}
	public String getAb_firstname() {
		return ab_firstname;
	}
	public void setAb_firstname(String ab_firstname) {
		this.ab_firstname = ab_firstname;
	}
	public String getAb_lastname() {
		return ab_lastname;
	}
	public void setAb_lastname(String ab_lastname) {
		this.ab_lastname = ab_lastname;
	}
	public String getAb_email() {
		return ab_email;
	}
	public void setAb_email(String ab_email) {
		this.ab_email = ab_email;
	}
}

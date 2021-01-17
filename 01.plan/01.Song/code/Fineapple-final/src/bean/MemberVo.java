package bean;

import java.sql.Date;

public class MemberVo {
	private int member_serial;
	private String member_mid;
	private String member_pwd;
	private String member_name;
	private String member_email;
	private String member_phone;
	private String member_zipcode;
	private String member_address;
	private Date member_signup_date;
	
	
	public int getMember_serial() {
		return member_serial;
	}
	public void setMember_serial(int member_serial) {
		this.member_serial = member_serial;
	}
	public String getMember_mid() {
		return member_mid;
	}
	public void setMember_mid(String member_mid) {
		this.member_mid = member_mid;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_zipcode() {
		return member_zipcode;
	}
	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public Date getMember_signup_date() {
		return member_signup_date;
	}
	public void setMember_signup_date(Date member_signup_date) {
		this.member_signup_date = member_signup_date;
	}
	
	@Override
	public String toString() {
		return "MemberVo [member_mid=" + member_mid + ", member_pwd=" + member_pwd + ", member_name=" + member_name
				+ ", member_email=" + member_email + ", member_phone=" + member_phone + ", member_zipcode="
				+ member_zipcode + ", member_address=" + member_address + ", member_signup_date=" + member_signup_date
				+ ", member_serial=" + member_serial + "]";
	}
	
}

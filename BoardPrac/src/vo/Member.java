package vo;

public class Member {
	private String name;
	private String id;
	private String password;
	private String email;
	private String address;
	private String phonenum;
	private String carrier;
	private String telnum;
	
	public Member() {}
	
	public Member(String name, String id, String password, String email, String address,
			String phonenum, String carrier) {
		this.name = name;
		this.id = id;
		this.password = password;
		this.email = email;
		this.address = address;
		this.phonenum = phonenum;
		this.carrier = carrier;
		this.telnum = null;
	}
	
	public Member(String name, String id, String password, String email, String address,
			String phonenum, String carrier, String telnum) {
		this.name = name;
		this.id = id;
		this.password = password;
		this.email = email;
		this.address = address;
		this.phonenum = phonenum;
		this.carrier = carrier;
		this.telnum = telnum;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getCarrier() {
		return carrier;
	}
	public void setCarrier(String carrier) {
		this.carrier = carrier;
	}
	public String getTelnum() {
		return telnum;
	}
	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}

	@Override
	public String toString() {
		return "Member[name= " + name +
				", id= " + id +
				", password= " + password +
				", email= " + email +
				", address= " + address +
				", phonenum= " + phonenum +
				", carrier= " + carrier +
				", telnum= " + telnum;
	}
}
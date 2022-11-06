package com.customer;

public class Customer {
	private String username;
    private String name;
    private String address;
    private String nic;
    private String phone;
    private String password;
    
    public Customer(String username, String name, String address, String nic, String phone, String password) {
	this.username = username;
	this.name = name;
	this.address = address;
	this.nic = nic;
	this.phone = phone;
	this.password = password;
    }

	public String getUsername() {
		return username;
	}

	

	public String getName() {
		return name;
	}

	

	public String getAddress() {
		return address;
	}

	

	public String getNic() {
		return nic;
	}

	

	public String getPhone() {
		return phone;
	}

	

	public String getPassword() {
		return password;
	}
    
    
}

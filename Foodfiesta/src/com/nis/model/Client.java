package com.nis.model;

public class Client {
private String name;
private String address;
private String dob;

private String email;
private String mobno;
private String pass;


public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobno() {
	return mobno;
}
public void setMobno(String mobno) {
	this.mobno = mobno;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}

}

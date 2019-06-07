package com.app.model;

import java.util.List;

public class Person {
	private String pName;
	private String pwd;
	private String gender;
	private String country;
	private String langs;
	private List<String> addrs;
	
	public Person() {
		super();
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getLangs() {
		return langs;
	}

	public void setLangs(String langs) {
		this.langs = langs;
	}

	public List<String> getAddrs() {
		return addrs;
	}

	public void setAddrs(List<String> addrs) {
		this.addrs = addrs;
	}

	@Override
	public String toString() {
		return "Person [pName=" + pName + ", pwd=" + pwd + ", gender=" + gender + ", country=" + country + ", langs="
				+ langs + ", addrs=" + addrs + "]";
	}
	
	
	
	

}

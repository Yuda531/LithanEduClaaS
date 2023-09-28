package com.lithan.dto;

import com.lithan.entity.User;

public class LoginRequest {
	
	private String email;
	private String fullName;
	private String password;
	private String provider;
	private String error;
	private User payload;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getProvider() {
		return provider;
	}
	public void setProvider(String provider) {
		this.provider = provider;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public User getPayload() {
		return payload;
	}
	public void setPayload(User payload) {
		this.payload = payload;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	


}

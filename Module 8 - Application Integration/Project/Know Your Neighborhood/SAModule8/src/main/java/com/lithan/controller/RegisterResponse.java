package com.lithan.controller;

import com.lithan.entity.User;

public class RegisterResponse {

	String error;
	
	User user;

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}

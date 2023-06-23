package com.a5.service;


import com.a5.entity.User;


public interface UserService {

	String saveUser(User user);
	
	User findLoginUser(String username);
	
}

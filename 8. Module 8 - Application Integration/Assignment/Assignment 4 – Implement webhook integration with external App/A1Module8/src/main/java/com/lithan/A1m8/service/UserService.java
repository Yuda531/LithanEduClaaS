package com.lithan.A1m8.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.A1m8.model.User;
import com.lithan.A1m8.repository.UserRepository;

@Transactional
@Service
public class UserService {
	
	@Autowired
	public UserRepository userRepo;
	
	public User SaveUser(User user) {
		System.out.println("User Added Successfully");
		
		return userRepo.save(user);
	}
	
	public List<User> getAllUser(){	
		return userRepo.findAll();
	}
	
	public User getUserById(Long id) {
		return userRepo.findById(id).get();
	}
	
	public List<User> getUserByKeyword (String keyword){
		return userRepo.searchUserByKeyword (keyword);
	}
	
		
}

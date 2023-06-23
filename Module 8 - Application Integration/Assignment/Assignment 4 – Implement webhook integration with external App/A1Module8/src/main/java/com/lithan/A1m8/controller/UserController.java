package com.lithan.A1m8.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lithan.A1m8.model.User;
import com.lithan.A1m8.service.UserService;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	public UserService userService;
	
	@PostMapping("/register")
	public User saveUser(@RequestBody User user) {
		return userService.SaveUser(user);
		
	}
	
	@GetMapping("/all_users")
	public List<User> getAllUser() {
		return userService.getAllUser();
		
	}
	
	@GetMapping("/user_details/{id}")
	public User getUserById(@PathVariable("id") Long id) {
		return userService.getUserById(id);
	}
	
	@GetMapping(value = "/search", params = "keyword")
	public List<User> getUserById(@Param("keyword") String keyword) {
		return userService.getUserByKeyword (keyword);
	}
	
	@PutMapping("/updateUser")
	public User updateUser(@RequestBody User user) {

		return userService.SaveUser(user);

	}
}

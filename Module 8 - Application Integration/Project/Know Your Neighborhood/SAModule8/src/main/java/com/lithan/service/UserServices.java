package com.lithan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.lithan.entity.EnumUserRole;
import com.lithan.entity.User;
import com.lithan.repository.UserRepository;

@Service
public class UserServices implements UserDetailsService {

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private BCryptPasswordEncoder encoder;

	public User addUser(User user) {
	    String email = user.getEmail();
	    if (userRepo.findByEmail(email).isPresent()) {
	        throw new IllegalArgumentException("Email already registered in Our System");
	    }
	    // if user not exist in database the code continue
	    String encodedPassword = encoder.encode(user.getPassword());
	    user.setPassword(encodedPassword);
	    user.setRole(EnumUserRole.USER);
	    return userRepo.save(user);
	}

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

		User user = userRepo.findByEmail(email).orElseThrow(
				() -> new UsernameNotFoundException(String.format("Username with email '%s' not found", email)));

		return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(),
				user.getAuthorities());
	}
	
	public User loadUserByEmail(String email) {
		return userRepo.findByEmail(email).get();
	}
	
	
	public boolean isUserExist(String email) {
		 return userRepo.findByEmail(email).isPresent();
	}
	
}
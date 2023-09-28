package com.lithan.service;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.model.UserDetails;
import com.lithan.repository.UserDetailsRepository;

@Service
@Transactional
public class UserDetailsService {
	@Autowired
	UserDetailsRepository repo;
	
	public UserDetails register(UserDetails userDetails) {
		return repo.save(userDetails);
	}
	
	public String getDetailsById(String userId) {
		return repo.getDetailsById(userId);
	}

	public UserDetails editprofile(Long userDetailsId, UserDetails ud) {
		UserDetails userDetails = repo.findById(userDetailsId).get();
		
		// update
		userDetails.setCity(ud.getCity());
		userDetails.setFirstName(ud.getFirstName());
		userDetails.setLastName(ud.getLastName());
		userDetails.setPhoneNumber(ud.getPhoneNumber());;
		
		// save
 		return repo.save(userDetails);
	}
	
	public List<UserDetails> searchByKey(String key) {
		return repo.searchByKey(key);
	}
	
	public List<UserDetails> getAllUserDetails() {
		return repo.findAll();
	}
	
	public UserDetails getDetailsById(Long id) {
		return repo.findById(id).get();
	}
	
	

}

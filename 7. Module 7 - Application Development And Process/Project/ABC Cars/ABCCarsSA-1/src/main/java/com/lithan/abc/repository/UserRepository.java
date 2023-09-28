package com.lithan.abc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lithan.abc.model.User;

public interface UserRepository extends JpaRepository<User, Long>{

	User findByUserName(String name);
	
	
}


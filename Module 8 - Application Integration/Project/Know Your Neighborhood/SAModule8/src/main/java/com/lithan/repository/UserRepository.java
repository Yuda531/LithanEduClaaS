package com.lithan.repository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	public Optional<User> findByEmail(String email);
	
}
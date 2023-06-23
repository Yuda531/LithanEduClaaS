package com.lithan.A1m8.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.lithan.A1m8.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	@Query(value = "SELECT * FROM tb_user WHERE username LIKE %:keyword% OR email LIKE %:keyword%", nativeQuery = true)
	public List<User> searchUserByKeyword (String keyword);

}

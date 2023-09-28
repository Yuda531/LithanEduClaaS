package com.lithan.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.lithan.model.Experience;

@Repository
public interface ExperienceRepository extends JpaRepository<Experience, Long> {
	
	@Query(value = "SELECT * FROM experience WHERE user_details_id = :udID", nativeQuery = true)
	public List<Experience> getExperienceByUserDetailsId(@Param("udID") String udID);

}

package com.lithan.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.repository.ExperienceRepository;

import com.lithan.model.Experience;

import java.util.List;

@Service
@Transactional
public class ExperienceService {

	@Autowired
	ExperienceRepository repo;
	
	
	public Experience addExperience(Experience ex) {
		return repo.save(ex);
	}

	public List<Experience> getExperienceByUserDetailsId(String udID) {
		return repo.getExperienceByUserDetailsId(udID);
	}
	
}

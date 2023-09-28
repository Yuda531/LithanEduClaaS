package com.lithan.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.repository.EducationRepository;

import com.lithan.model.Education;

import java.util.List;

@Service
@Transactional
public class EducationService {

	@Autowired
	EducationRepository repo;
	
	
	public Education addEducations(Education ed) {
		return repo.save(ed);
	}

	public List<Education> getEducationByUserDetailsId(String udID) {
		return repo.getEducationByUserDetailsId(udID);
	}
	
}

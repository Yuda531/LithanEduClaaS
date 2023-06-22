package com.lithan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "experience")
public class Experience {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "experience_id")
	private Long experienceId;
	
	
	@Column(name = "user_details_id")
	private String userDetailsId;
	
	
	@Column(name = "title")
	private String title;
	
	
	@Column(name = "company_name")
	private String companyName;


	@Column(name = "ex_start_date")
	private String ex_start_date;
	
	
	@Column(name = "ex_end_date")
	private String ex_end_date;
	
	
	public Experience() {}


	public Experience(Long experienceId, String userDetailsId, String title, String companyName, String ex_start_date,
			String ex_end_date) {
		super();
		this.experienceId = experienceId;
		this.userDetailsId = userDetailsId;
		this.title = title;
		this.companyName = companyName;
		this.ex_start_date = ex_start_date;
		this.ex_end_date = ex_end_date;
	}


	public Long getExperienceId() {
		return experienceId;
	}


	public void setExperienceId(Long experienceId) {
		this.experienceId = experienceId;
	}


	public String getUserDetailsId() {
		return userDetailsId;
	}


	public void setUserDetailsId(String userDetailsId) {
		this.userDetailsId = userDetailsId;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getCompanyName() {
		return companyName;
	}


	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}


	public String getEx_start_date() {
		return ex_start_date;
	}


	public void setEx_start_date(String ex_start_date) {
		this.ex_start_date = ex_start_date;
	}


	public String getEx_end_date() {
		return ex_end_date;
	}


	public void setEx_end_date(String ex_end_date) {
		this.ex_end_date = ex_end_date;
	};
	
	
	
	

}

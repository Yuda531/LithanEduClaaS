package com.lithan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "education")
public class Education {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "education_id")
	private Long educationId;
	
	
	@Column(name = "user_details_id")
	private String userDetailsId;
	
	
	@Column(name = "university")
	private String university;
	
	
	@Column(name = "majored")
	private String majored;


	@Column(name = "ed_start_date")
	private String ed_start_date;
	
	
	@Column(name = "ed_end_date")
	private String ed_end_date;
	
	
	
	public Education() {}



	public Education(Long educationId, String userDetailsId, String university, String majored, String ed_start_date,
			String ed_end_date) {
		super();
		this.educationId = educationId;
		this.userDetailsId = userDetailsId;
		this.university = university;
		this.majored = majored;
		this.ed_start_date = ed_start_date;
		this.ed_end_date = ed_end_date;
	}



	public Long getEducationId() {
		return educationId;
	}



	public void setEducationId(Long educationId) {
		this.educationId = educationId;
	}



	public String getUserDetailsId() {
		return userDetailsId;
	}



	public void setUserDetailsId(String userDetailsId) {
		this.userDetailsId = userDetailsId;
	}



	public String getUniversity() {
		return university;
	}



	public void setUniversity(String university) {
		this.university = university;
	}



	public String getMajored() {
		return majored;
	}



	public void setMajored(String majored) {
		this.majored = majored;
	}



	public String getEd_start_date() {
		return ed_start_date;
	}



	public void setEd_start_date(String ed_start_date) {
		this.ed_start_date = ed_start_date;
	}



	public String getEd_end_date() {
		return ed_end_date;
	}



	public void setEd_end_date(String ed_end_date) {
		this.ed_end_date = ed_end_date;
	};
	
	

	

}

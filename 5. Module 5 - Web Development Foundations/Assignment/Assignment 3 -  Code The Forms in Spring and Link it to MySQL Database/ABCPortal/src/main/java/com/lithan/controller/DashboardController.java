package com.lithan.controller;

import java.util.List;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.model.Education;
import com.lithan.model.Experience;
import com.lithan.model.UserDetails;
import com.lithan.service.EducationService;
import com.lithan.service.ExperienceService;
import com.lithan.service.UserDetailsService;

@Controller
public class DashboardController {

	@Autowired
	UserDetailsService ud;
	
	@Autowired
	ExperienceService experience_service;

	@Autowired
	EducationService education_service;
	
	
	@RequestMapping(value = "/profile")
	public ModelAndView profile(HttpSession session, Model model) {
		try {
			this.setModel(model, session);
			return new ModelAndView("profile");  
		} catch (Exception e) {
			System.out.println(e);
			String msg = "Login required";
			model.addAttribute("message", msg);
			return new ModelAndView("login");
		}
		
	}
	
	@RequestMapping(value="/editprofile") // update profile GET
	public ModelAndView updateProfile(Model model, HttpSession session) throws Exception {
		try {
			this.setModel(model, session);
			return new ModelAndView("editprofile");  
		} catch (Exception e) {
			System.out.println(e);
			String msg = "Login required";
			model.addAttribute("message", msg);
			return new ModelAndView("login");
		}
	}

	@RequestMapping(value="/profile", method = RequestMethod.POST) // update profile POST
	public String up(
			@ModelAttribute("profile") UserDetails userDetails,
			@RequestParam("firstName") String fullname, 
			@RequestParam("lastName") String lastName, 
			@RequestParam("phoneNumber") String phoneNumber, 
			@RequestParam("city") String city,
			Model model, HttpSession session) {
		
		Long userDetailsId = Long.parseLong(String.valueOf(session.getAttribute("userId")));
		ud.editprofile(userDetailsId, userDetails);
			
		this.setModel(model, session);
		
		String msg = "Profile has been updated";
		model.addAttribute("message", msg);
		return "profile";
	}
	
	
	@RequestMapping(value="/add_experience", method = RequestMethod.POST) // update profile POST
	public String addExperience(
			
			@RequestParam("title") String title,
			@RequestParam("company") String company, 
			@RequestParam("ex_start_date") String ex_start_date,
			@RequestParam("ex_end_date") String ex_end_date, 
			Experience experiences,
			Model model, HttpSession session) {
		
		Long userDetailsId = Long.parseLong(String.valueOf(session.getAttribute("userId")));

		
		if(title.equals("") || company.equals("") || ex_start_date.equals("") || ex_end_date.equals("")) {
			System.out.println("Experiences Empty");
		} else {
			// exs.updateExperiences(String.valueOf(userDetailsId), experiences);
			experiences.setTitle(title);
			experiences.setCompanyName(company);
			experiences.setEx_start_date(ex_start_date.toString());
			experiences.setEx_end_date(ex_end_date.toString());
			experiences.setUserDetailsId(String.valueOf(userDetailsId));			
			experience_service.addExperience(experiences);
		}
		
		
		this.setModel(model, session);
		
		String msg = "Profile has been updated";
		model.addAttribute("message", msg);
		return "profile";
	}
	
	
	
	@RequestMapping(value="/add_education", method = RequestMethod.POST) // update profile POST
	public String addEducation(
			
			@RequestParam("university") String university,
			@RequestParam("majored") String majored, 
			@RequestParam("ed_start_date") String ed_start_date,
			@RequestParam("ed_end_date") String ed_end_date, 
			Education education,
			Model model, HttpSession session) {
		
		Long userDetailsId = Long.parseLong(String.valueOf(session.getAttribute("userId")));

		
		if(university.equals("") || majored.equals("") || ed_start_date.equals("") || ed_end_date.equals("")) {
			System.out.println("Education Empty");
		} else {
			// exs.updateExperiences(String.valueOf(userDetailsId), experiences);
			education.setUniversity(university);
			education.setMajored(majored);
			education.setEd_start_date(ed_start_date);
			education.setEd_end_date(ed_end_date);
			education.setUserDetailsId(String.valueOf(userDetailsId));			
			education_service.addEducations(education);
		}
		
		
		this.setModel(model, session);
		
		String msg = "Profile has been updated";
		model.addAttribute("message", msg);
		return "profile";
	}
	
	
	private void setModel(Model model, HttpSession session) {
		String userId = String.valueOf(session.getAttribute("userId"));
		String[] userDetails = ud.getDetailsById(userId).replaceAll("null", "-").split(",");
		String udID = userDetails[0];
		
		model.addAttribute("f", userDetails[1].charAt(0));
		model.addAttribute("l", userDetails[2].charAt(0));
		
		model.addAttribute("firstName", userDetails[1]);
		model.addAttribute("lastName", userDetails[2]);
		
		model.addAttribute("fullName", userDetails[1] + " " + userDetails[2]);
		model.addAttribute("city", userDetails[3]);
		model.addAttribute("phoneNumber", userDetails[4]);
		
		
		// experiences
		model.addAttribute("experiences", experience_service.getExperienceByUserDetailsId(udID)); // Experiences[]
		
		// education
		model.addAttribute("education", education_service.getEducationByUserDetailsId(udID)); // Experiences[]


		
	}
}

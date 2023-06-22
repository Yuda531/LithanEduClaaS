package com.lithan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.model.UserDetails;
import com.lithan.service.EducationService;
import com.lithan.service.ExperienceService;
import com.lithan.service.UserDetailsService;


@Controller
public class SearchController {

	@Autowired
	UserDetailsService ud;
	
	@Autowired
	ExperienceService experience_service;

	@Autowired
	EducationService education_service;
	
	@RequestMapping(value="/search")
	public ModelAndView search(HttpServletRequest req, Model model) throws Exception {
		String search = req.getParameter("search");
		
		
		if(search != null && !search.equals("")) {
			search = search.split(" ")[0];
			List<UserDetails> selectedUser = ud.searchByKey(search);
			model.addAttribute("selected", selectedUser);
			
			if(selectedUser.size() == 0) {
				model.addAttribute("notFound", true);
			}
		}
		
		
		
		return new ModelAndView("search");  
	}
	
	@RequestMapping(value="/result", method = RequestMethod.POST) // view someone profile
	public ModelAndView searchProfile(@RequestParam("uId") String uId, Model model, HttpSession session) throws Exception {
		this.setModel(model, session, uId);
		return new ModelAndView("result");  
	}
	
	private void setModel(Model model, HttpSession session, String uId) {
		String userId = String.valueOf(uId);
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

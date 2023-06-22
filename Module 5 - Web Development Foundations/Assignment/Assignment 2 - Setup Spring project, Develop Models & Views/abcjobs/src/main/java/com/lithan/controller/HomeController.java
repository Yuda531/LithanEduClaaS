package com.lithan.controller;

import java.util.ArrayList;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.bean.User;

@Controller
public class HomeController {
	
	static int random_int;
	
	private String[] users = {
			"Edward Steingerd - EdwardS.jpg - CEO of Cyber Crime in Punk Hazard.",
			"Johnson Edward - EdwardSS.jpg - Full Stack Web Developer",
			"Edward Newgate - Edward Newgate.jpg - The Ministry of IT in New World",
			"Diago Jones Edward -People.jpg -  Senior Student in Tech School",
			};
	private String[] job = {"Tesla", "Google", "Meta", "Microsoft"};
	private String[] location = {"Bandung", "Tokyo", "Amsterdam", "London"};
	private String[] phoneNumber = {"1089263", "0934711", "0836409", "120439"};
	private String[] education = {"Lithan", "STTB", "ITB", "UCLA"};
	private String[] photoprofile = {"EdwardS.jpg", "EdwardSS.jpg", "Edward Newgate.jpg", "People.jpg"};

	@RequestMapping(value="/") // home page
	public ModelAndView index(HttpServletResponse res) throws Exception {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/homepage") // home page
	public ModelAndView homepage(Model model) throws Exception {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/registration") // registration
	public ModelAndView registration(Model model) throws Exception {
		return new ModelAndView("registration");
	}
	@RequestMapping(value="/registration", method = RequestMethod.POST)
	public String registration(
			@RequestParam("email") String email,
			@RequestParam("fullName") String fullName,
			@RequestParam("location") String location,
			@RequestParam("password") String password,
			@RequestParam("confPass") String confPass, Model model) throws Exception {
		
				
		if((confPass.equals(password))) {
			User.setEmail(email);
			User.setFullName(fullName);
			User.setLocation(location);
			User.setPassword(password);
			model.addAttribute("email", email);
			model.addAttribute("fullname", fullName);

			return "thankyou";
		} else {
			String msg = "Password doesn't matched";
			model.addAttribute("message", msg);
			return "registration";
		}
		
	}
	
	@RequestMapping(value="/thankyou") // thankyou
	public ModelAndView thankyou(Model model) throws Exception {
		return new ModelAndView("thankyou");
	}
	
	@RequestMapping(value="/verified") // verified
	public ModelAndView verified(Model model) throws Exception {
		return new ModelAndView("verified");
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletResponse res, Model model) throws Exception {
		model.addAttribute("e", User.getEmail());
		model.addAttribute("p", User.getPassword());
		return new ModelAndView("login"); 
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST) // login process
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model) throws Exception {
			
	    if (User.getEmail() == null && User.getPassword() == null) {
	        // Kode jika akun pengguna belum terbuat
	        String msg = "Account Not Found!";
	        model.addAttribute("message", msg);
	        return "login";
	    }
			
	    if (email == null || !email.toLowerCase().equals(User.getEmail().toLowerCase()) || !password.equals(User.getPassword())) {
	        // Kode jika validasi gagal
	        String msg = "Credentials is incorrect !";
	        model.addAttribute("message", msg);
	        return "login";
	    } else {
	        // Kode jika validasi berhasil
	        this.setModel(model);
	        User.setIsLogin(true);
	        return "profile";
	    }
	}
	
	@RequestMapping(value="/forgotpass")
	public ModelAndView forgotpass(HttpServletResponse res) throws Exception {
		return new ModelAndView("forgotpass");  
	}
	
	@RequestMapping(value="/forgotpass", method = RequestMethod.POST) // forgot password logic
	public String forgotpass(
			@RequestParam("email") String email, Model model) throws Exception {
		
		try {
			if(email.toLowerCase().equals(User.getEmail().toLowerCase())) {
				User.setIsReset(true);
				return "resetpass";
			}
		} catch (Exception e) {
			System.out.println(email + " " + e);
		}
				
		String msg = "Email not found";
		model.addAttribute("message", msg);
		return "forgotpass";
	}
	
	@RequestMapping(value="/resetpass")
	public ModelAndView resetpass(Model model) throws Exception {
		if(User.isReset()) {
			return new ModelAndView("resetpass");  
		}
		String msg = "Email required";
		model.addAttribute("message", msg);
		return new ModelAndView("forgotpass"); 
	}
	
	@RequestMapping(value="/resetpass", method = RequestMethod.POST) // reset password
	public String resetpass(
			@RequestParam("password") String password, Model model) throws Exception {
		User.setPassword(password);
		String msg = "Password has been changed";
		model.addAttribute("scMessage", msg);
		return "login";
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletResponse res, Model model) throws Exception {
		User.setEmail(null);
		User.setPassword(null);
		User.setFullName(null);
		User.setEducation(null);
		User.setJob(null);
		User.setPhoneNumber(null);
		User.setIsLogin(false);
		
		return "login"; 
	}
	
	@RequestMapping(value="/profile") // profile
	public ModelAndView profile(Model model) throws Exception {
		try {
			this.setModel(model);
			return new ModelAndView("profile"); 
		} catch (Exception e) {
			String msg = "Login required";
			model.addAttribute("message", msg);
			return new ModelAndView("login");
		}
	}
	
	@RequestMapping(value="/editprofile", method = RequestMethod.POST) // update profile POST
	public String up(
			@RequestParam("fullname") String fullname, 
			@RequestParam("email") String email, 
			@RequestParam("phoneNumber") String phoneNumber, 
			@RequestParam("location") String location,
			@RequestParam("education") String education, 
			@RequestParam("job") String job, Model model) {
		
		User.setFullName(fullname);
		User.setEmail(email);
		User.setPhoneNumber(phoneNumber);
		User.setLocation(location);
		User.setEducation(education);
		User.setJob(job);
		
		this.setModel(model);
		
		String msg = "Profile has been updated";
		model.addAttribute("message", msg);
		return "profile";
	}
	
	@RequestMapping(value="/search")
	public ModelAndView search(HttpServletRequest req, Model model) throws Exception {
		String q = req.getParameter("search");
		ArrayList<String> selectedUser = new ArrayList<String>();
		
		if(q != null && !(q.equals(""))) {
			Pattern p = Pattern.compile("[" + q.toLowerCase() + "]");
			
			for(String u: this.users) {
				String user = u.split("-")[0].toLowerCase();
				Matcher m = p.matcher(user);
				
				if(m.find(0)) {
					selectedUser.add(u);
				}
			}
		} 
		
		if(selectedUser.size() == 0 && q != null) {
			model.addAttribute("notFound", true);
		} else {
			model.addAttribute("selected", selectedUser);
		}
		
		return new ModelAndView("search");  
	}
	
	@RequestMapping(value="/result", method = RequestMethod.POST) // view someone profile
	public ModelAndView searchProfile(@RequestParam("name") String name, Model model) throws Exception {
		int job = new Random().nextInt(this.job.length);
		int location = new Random().nextInt(this.location.length);
		int phoneNumber = new Random().nextInt(this.phoneNumber.length);
		int education = new Random().nextInt(this.education.length);
		int photoprofile = new Random().nextInt(this.photoprofile.length);
		
		for(String u: this.users) {
			String userName = u.split("-")[0];
			
			if(name.equals(userName)) {
				
				model.addAttribute("fullname", userName);
				model.addAttribute("photoprofile", this.photoprofile[photoprofile]);
				model.addAttribute("location", this.location[location]);
				model.addAttribute("education", this.education[education]);
				model.addAttribute("job", this.job[job]);
				model.addAttribute("phoneNumber", this.phoneNumber[phoneNumber]);
				model.addAttribute("email", userName + "@gmail.com");
			}
		}
		return new ModelAndView("result");  
	}
	
	private void setModel(Model model) {
		model.addAttribute("f", User.getFullName().charAt(0));
		
		model.addAttribute("fullname", User.getFullName());
		model.addAttribute("job", User.getJob());
		model.addAttribute("location", User.getLocation());
		model.addAttribute("company", User.getEducation());
		model.addAttribute("email", User.getEmail());
		model.addAttribute("phoneNumber", User.getPhoneNumber());
		model.addAttribute("education", User.getEducation());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

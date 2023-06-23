package com.lithan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lithan.dto.LoginRequest;
import com.lithan.entity.User;
import com.lithan.service.UserServices;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserServices userServices;

	@Autowired
	private AuthenticationManager authenticate;

	@Autowired
	public UserController(AuthenticationManager authenticate) {
		this.authenticate = authenticate;
	}

	@PostMapping("/register")
	public ResponseEntity<RegisterResponse> addUser(@RequestBody User user) {
		
		RegisterResponse response = new RegisterResponse();
		User users = new User();
		users.setEmail(user.getEmail());
		users.setPassword(user.getPassword());
		users.setName(user.getName());
		users.setProvider("LOCAL");
		
		
		try {
			users = userServices.addUser(users);
			response.setError(null);
			response.setUser(users);
			return ResponseEntity.ok(response);
		} catch (Exception e) {
			response.setError("Email already registered!");
			response.setUser(null);
			return ResponseEntity.status(HttpStatus.FORBIDDEN).body(response);
		}
		
	}

	 @PostMapping("/login")
	 public ResponseEntity<LoginRequest> login(@RequestBody LoginRequest loginRequest) {
		 
		 	LoginRequest request = new LoginRequest();
		 	
		 	request.setEmail(loginRequest.getEmail());
		 	request.setPassword(loginRequest.getPassword());
		 	request.setProvider(loginRequest.getProvider());
		 	
		 	if(loginRequest.getProvider().equals("LOCAL")) {
		 		return loginLocal(request);
		 	} else if (loginRequest.getProvider().equals("FACEBOOK")) {
		 		request.setProvider("FACEBOOK");
		 		request.setPassword("-");
		 		request.setFullName(loginRequest.getFullName());
		 		return loginFacebook(request);
		 	}
		 	
		 	
		 	request.setPayload(null);
		 	request.setError("Provider Not Found !");
		 	return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(request);
	    }
	 
	 
	 public ResponseEntity<LoginRequest> loginLocal(LoginRequest loginRequest) {
	        try {
	            Authentication authentication = authenticate.authenticate(
	                    new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getPassword())
	            );
	            SecurityContextHolder.getContext().setAuthentication(authentication);

	            UserDetails userDetails = userServices.loadUserByUsername(loginRequest.getEmail());
	            User authenticatedUser = userServices.loadUserByEmail(userDetails.getUsername());
	            
	            loginRequest.setPayload(authenticatedUser);
	            loginRequest.setError(null);

	            return ResponseEntity.ok(loginRequest);
	            
	        } catch (Exception e) {
	        	
	        	 loginRequest.setError("Invalid username or password !");
	            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(loginRequest);
	            
	        }
	 }
	 
	 
	 public ResponseEntity<LoginRequest> loginFacebook(LoginRequest loginRequest) { 
		 

		
		
		 if(!userServices.isUserExist(loginRequest.getEmail())) {
			 User user = new User();
			 user.setEmail(loginRequest.getEmail());
			 user.setPassword(loginRequest.getPassword());
			 user.setName(loginRequest.getFullName());
			 user.setProvider(loginRequest.getProvider());
			 userServices.addUser(user);
		 }
		 
		 return authenticateFacebookAccount(loginRequest);
		 
	 }
	 
	 public ResponseEntity<LoginRequest> authenticateFacebookAccount(LoginRequest loginRequest) {
		 
	        try {
	            Authentication authentication = authenticate.authenticate(
	                    new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getPassword())
	            );
	            SecurityContextHolder.getContext().setAuthentication(authentication);

	            UserDetails userDetails = userServices.loadUserByUsername(loginRequest.getEmail());
	            User authenticatedUser = userServices.loadUserByEmail(userDetails.getUsername());
	            
	            loginRequest.setPayload(authenticatedUser);
	            loginRequest.setError(null);

	            return ResponseEntity.ok(loginRequest);
	            
	        } catch (Exception e) {
	        	
	        	 loginRequest.setError("Invalid username or password !");
	            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(loginRequest);
	            
	        }
	 }
	 

	@GetMapping("/logout")
	public String logout() {
		SecurityContextHolder.clearContext();
		return "Logout Successfully";
	}

	@GetMapping("/test")
	public String testAsep() {
		return "Nge Teh ASU, Bajingan";
	}
}
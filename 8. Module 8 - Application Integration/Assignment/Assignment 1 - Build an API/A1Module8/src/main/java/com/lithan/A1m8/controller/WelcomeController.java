package com.lithan.A1m8.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class WelcomeController {

	@GetMapping
	public String welcome() {
		
		return "Semua yang berlalu jangan pernah kembali";
		
	}
	
}
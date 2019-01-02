package com.wherex.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {
	
	@GetMapping("/")
	public String showHome() {
		return "home";
	}
	@GetMapping("/stock")
	public String showStock() {
		return "stock";
	}
	@GetMapping("/staff")
	public String showStaff() {
		return "staff-members";
	}
	@GetMapping("/contact")
	public String showContact() {
		return "contact-page";
	}
	
	@GetMapping("/events")
	public String showEvents() {
		return "events-calendar";
	}



}

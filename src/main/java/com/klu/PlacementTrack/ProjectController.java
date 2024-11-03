package com.klu.PlacementTrack;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProjectController {
	
@GetMapping()
public String home()
{
	return "home";
}
@GetMapping("/signup")
public String signup()
{
	return "signup";
}
@GetMapping("/signin")
public String signin()
{
	return "signin";
}
@GetMapping("/aboutus")
public String aboutus()
{
	return "aboutus";
}
@PostMapping("/dashboard")
public String dashboard(@RequestParam("email") String email,Model model)
{
	model.addAttribute("email", email);
	return "dashboard";
}
@GetMapping("/dashboard1")
public String dashboard1()
{
	return "dashboard";
}
@GetMapping("/logout")
public String logout() {
    return "logout";
}
@GetMapping("/profile")
public String profile() {
    return "profile";
}
@GetMapping("/report")
public String report() {
    return "report";
}
@GetMapping("/jobapplication")
public String jobapplication() {
    return "jobapplication";
}




}

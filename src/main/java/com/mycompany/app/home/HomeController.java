package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = {"/", "/home"})
	public String home() {
		return "home";
	}
	
	@RequestMapping("/xdmLogin")
	public String xdmMember() {
		return "xdm/member";
	}

}
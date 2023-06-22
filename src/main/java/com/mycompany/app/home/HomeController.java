package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value = {"/", "/home"})
	public String home() {
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		// 아래의 jsp 파일 호출
		return "home";
	}
	
	@RequestMapping(value = "/home2")
	public String home2() {
		return "app/home/home2";	
	}
	
	@RequestMapping(value = "/home3")
	public String home3() {
		return "app/home/home3";
	}
	
	@RequestMapping(value = "/main")
	public String main() {
		return "app/xdmin/main";
	}

}
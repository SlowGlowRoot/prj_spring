package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value = {"/", "/home", "/index", "/biographyUsrView"})
//	@RequestMapping("/")
	public String home() {
		return "xdm/infra/index/index";
	}
	
	@RequestMapping("/LoginXdmForm")
	public String xdmMember() {
		return "xdm/infra/member/member";
	}
	
	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}

}

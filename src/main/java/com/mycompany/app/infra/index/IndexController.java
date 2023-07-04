package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	// 첫 화면 (사용자, 관리자)
	@RequestMapping(value = {"/", "/home", "/index", "/biographyUsrView"})
//	@RequestMapping("/")
	public String home() {
		return "xdm/infra/index/index";
	}
	
	// 관리자 로그인
	@RequestMapping("/LoginXdmForm")
	public String xdmMember() {
		return "xdm/infra/member/member";
	}
	
	
	// 사용자 로그인
		@RequestMapping("/LoginUsrForm")
		public String usrMember() {
			return "usr/infra/member/member";
		}

	
	// 관리자 대쉬보드
	@RequestMapping("/indexXdmView")
	public String indexXdmView() {
		return "xdm/infra/index/indexXdmView";
	}

}

package com.mycompany.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
//	localhost(127.0.0.1:80) 뒤에 붙는 것
	@RequestMapping("/codeGroupList")
//	Controller에서 jsp 파일로 정보를 가져오기 위해서 Model을 사용
	public String codeGroupList(Model model) {
	
		List<CodeGroup> list = service.selectList();
		
		//	앞의 "list"는 jsp 파일에서 정보를 받기 위한 변수명 (jsp에서 사용)
		model.addAttribute("list", list);
		
		return "codeGroupList";
	}
}

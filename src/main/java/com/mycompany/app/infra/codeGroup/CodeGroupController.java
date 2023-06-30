package com.mycompany.app.infra.codeGroup;

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
	@RequestMapping("/codeGroupXdmList")
	
//	Controller에서 jsp 파일로 정보를 가져오기 위해서 Model을 사용
//	public String codeGroupList(Model model) {
	public String codeGroupXdmList(CodeGroupVo vo, Model model) {
		
//		System.out.println("vo.getShOption() : " + vo.getShOption());
//		System.out.println("vo.getShKeyword() : " + vo.getShKeyword());
	
		List<CodeGroup> list = service.selectList(vo);
		
		//	앞의 "list"는 jsp 파일에서 정보를 받기 위한 변수명 (jsp에서 사용), 뒷쪽 list는 List<CodeGroup> list = service.selectList();에서의 list
		model.addAttribute("list", list);
		
		return "xdm/infra/codeGroup/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeGroupVo vo, Model model){
		
		CodeGroup codeGroup = service.selectOne(vo);
		
		model.addAttribute("item", codeGroup);
		
		return "xdm/infra/codeGroup/codeGroupXdmForm";
		
	};
	
	@RequestMapping("/codeGroupXdmUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		System.out.println("codeGroupUpdt");
		
		service.update(dto);
//		return은 기존의 jsp파일 위치를 알려주는 것이지만 redirect를 붙이면 localhost 주소 뒤에 붙는 경로다.
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupXdmDel")
	public String codeGroupDel(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupXdmUel")
	public String codeGroupUel(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupXdmInst")
	public String codeGroupInst(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroupVo vo, Model model) {
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "xdm/infra/codeGroup/codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model){
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item", codeGroup);
		return "xdm/infra/codeGroup/codeGroupForm";
		
	};
	
}

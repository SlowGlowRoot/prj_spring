package com.mycompany.app.infra.codeGroup;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String codeGroupXdmUpdt(CodeGroup dto) {
//		System.out.println("codeGroupUpdt");
		
		service.update(dto);
//		return은 기존의 jsp파일 위치를 알려주는 것이지만 redirect를 붙이면 localhost 주소 뒤에 붙는 경로다.
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupXdmDel")
	public String codeGroupXdmDel(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupXdmUel")
	public String codeGroupXdmUel(CodeGroup dto) {
		System.out.println("CodeGroupController에서 객체 Uelete의 Mapping은 실행되었습니다.");
		service.uelete(dto);
		return "redirect:/codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupXdmInst")
	public String codeGroupXdmInst(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupXdmList";
	}
	
//	==========================================================================
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		return "xdm/infra/codeGroup/codeGroupList";
		
//		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
//
//		List<CodeGroup> list = service.selectList(vo);
//		model.addAttribute("list", list);
////	model.addAttribute("vo", vo);
//		return "xdm/infra/codeGroup/codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model){
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item", codeGroup);
		return "xdm/infra/codeGroup/codeGroupForm";
		
	};
	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		System.out.println("codeGroupUpdt");
		service.update(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupDel")
	public String codeGroupDel(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupUel")
	public String codeGroupUel(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupInst")
	public String codeGroupInst(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupList";
	}
	
//	==========================================================================
	
	
//	// 전체 회원정보 내용
//	@RequestMapping("/memberXdmList")
//	public String memberXdmList(CodeGroupVo vo, Model model) {
//		List<CodeGroup> list = service.selectListUserInfo(vo);
//		model.addAttribute("regList", list);
//		return "xdm/infra/member/memberXdmList";
//	}
//	
//	// 단일 회원정보 내용
//	@RequestMapping("/memberXdmForm")
//	public String memberXdmForm(CodeGroupVo vo, Model model){
//		CodeGroup codeGroup = service.selectOneUserInfo(vo);
//		model.addAttribute("regItem", codeGroup);
//		return "xdm/infra/member/memberXdmForm";
//	}
//	
//	// 회원정보 기입 (=회원가입)
//	@RequestMapping("/memberUsrView")
//	public String memberUsrView(CodeGroupVo vo, Model model){
//		CodeGroup codeGroup = service.selectOneUserInfo(vo);
//		model.addAttribute("regItem", codeGroup);
//		return "usr/infra/member/memberUsrView";
//	};
//	
//	// 회원 정보를 DB에 추가
//	@RequestMapping("/memberRegAdd")
//	public String regUsrView(CodeGroup dto) {
//		service.insertUserInfo(dto);
//		return "redirect:/codeGroupXdmList";
//	}
	
}

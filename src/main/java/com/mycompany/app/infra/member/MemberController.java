package com.mycompany.app.infra.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	// 전체 회원정보 내용
	@RequestMapping("/memberXdmList")
	public String memberXdmList(MemberVo vo, Model model) {
		List<Member> list = service.selectListUserInfo(vo);
		model.addAttribute("regList", list);
		return "xdm/infra/member/memberXdmList";
	}
	
	// 단일 회원정보 내용
	@RequestMapping("/memberXdmForm")
	public String memberXdmForm(MemberVo vo, Model model){
		Member member = service.selectOneUserInfo(vo);
		model.addAttribute("regItem", member);
		return "xdm/infra/member/memberXdmForm";
	}
	
	// 회원정보 기입 (=회원가입)
	@RequestMapping("/memberUsrView")
	public String memberUsrView(MemberVo vo, Model model){
		Member member = service.selectOneUserInfo(vo);
		model.addAttribute("regItem", member);
		return "usr/infra/member/memberUsrView";
	};
	
	// 회원 정보를 DB에 추가
	@RequestMapping("/memberRegAdd")
	public String regUsrView(Member dto) {
		service.insertUserInfo(dto);
		return "redirect:/codeGroupXdmList";
	}

}

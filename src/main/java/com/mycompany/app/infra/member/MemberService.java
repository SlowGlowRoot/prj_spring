package com.mycompany.app.infra.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectListUserInfo(MemberVo vo);
	public Member selectOneUserInfo(MemberVo vo);
	public int insertUserInfo(Member dto);


}

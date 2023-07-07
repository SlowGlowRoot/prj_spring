package com.mycompany.app.infra.member;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectListUserInfo(MemberVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member selectOneUserInfo(MemberVo vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertUserInfo(Member dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}

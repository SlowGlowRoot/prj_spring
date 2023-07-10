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
		return dao.selectListUserInfo(vo);
	}

	@Override
	public Member selectOneUserInfo(MemberVo vo) {
		return dao.selectOneUserInfo(vo);
	}

	@Override
	public int insertUserInfo(Member dto) {
		return dao.insertUserInfo(dto);
	}

}

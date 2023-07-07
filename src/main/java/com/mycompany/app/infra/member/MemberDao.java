package com.mycompany.app.infra.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlMember")
	private SqlSession sqlMember;
	
	private static String namespace = "com.mycompany.app.infra.member.MemberMapper";
	
	public List<Member> selectListUserInfo(MemberVo vo) {
		return sqlMember.selectList(namespace + ".selectListUserInfo", vo);
	}
	
	public Member selectOneUserInfo(MemberVo vo) {
		Member member = sqlMember.selectOne(namespace + ".selectOneUserInfo", vo);
		return member;
	}
	
	public int insertUserInfo(Member dto) { return sqlMember.insert(namespace + ".selectListUserInfo", dto); }
	
}

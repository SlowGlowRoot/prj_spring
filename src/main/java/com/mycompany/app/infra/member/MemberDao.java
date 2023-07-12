package com.mycompany.app.infra.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.member.MemberMapper";
	
	public List<Member> selectListUserInfo(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectListUserInfo", vo);
	}
	
	public Member selectOneUserInfo(MemberVo vo) {
		Member member = sqlSession.selectOne(namespace + ".selectOneUserInfo", vo);
		return member;
	}
	
	public int insertUserInfo(Member dto) { return sqlSession.insert(namespace + ".insertUserInfo", dto); }
	
}

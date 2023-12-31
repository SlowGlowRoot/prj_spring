package com.mycompany.app.infra.codeGroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	
//  spring이 자동적으로 객체를 생성해냈지만 그에 대한 변수가 없기 떄문에 Java 어노테이션을 이용해 sqlSession으로 변수를 지정해 둔 것
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
//	Dao의 namespace가 mapper의 주소를 찾아가야하므로 동일하게 작성해야 함.	                                  
	private static String namespace = "com.mycompany.app.infra.codeGroup.CodeGroupMapper";
	
//  CodeGroup의 내용을 List 형태로 반환 (1개가 아닐 수도 있으니 List로 반환)
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
		}
	
//	public List<CodeGroup> selectList() { return sqlSession.selectList(namespace + ".selectList", ""); }
	
	public CodeGroup selectOne(CodeGroupVo vo){
		CodeGroup codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo);
		return codeGroup;
		}
	
	public int selectOneCount(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public int update(CodeGroup dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(CodeGroup dto) { return sqlSession.delete(namespace + ".delete", dto); }
	
	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete", dto); }
	
	public int insert(CodeGroup dto) { return sqlSession.insert(namespace + ".insert", dto); }

}
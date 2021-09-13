package com.hwangss.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hwangss.domain.SignVO;


@Repository
public class SignDAOImpl implements SignDAO{

	 @Inject
	 private SqlSession sql;
	 
	 private static String namespace = "mappers.boardMapper";
	 
	@Override
	public void sign_write(SignVO vo) throws Exception {
		// TODO 값을 매퍼로 넘겨주기 namaspace와 id로 구분하여 넘어감
		
		System.out.println("sign_write 함수 실행");
		System.out.println("아이디 확인 "+vo.getId());
		System.out.println("비밀번호 확인 "+vo.getPassword());
		System.out.println("이름 확인 "+vo.getName());
		System.out.println("이메일 확인 "+vo.getEmail());
		sql.insert(namespace + ".sign_write", vo);
		System.out.println("db 저장 성공");
		
	}

	@Override
	public String login_check(SignVO vo) {
		// TODO 값을 매퍼로 넘겨주기 namaspace와 id로 구분하여 넘어감
		System.out.println("login_check 함수 실행");
		
		return sql.selectOne(namespace+".login_check", vo);
	}

}

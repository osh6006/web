  package com.hwangss.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.hwangss.dao.SignDAO;
import com.hwangss.domain.SignVO;

// 어노테이션으로 이 클래스의 역할을 정해준다.
@Service
public class SignUpServiceImpl implements SignUpService{
	
	 @Inject
	private  SignDAO dao;
	 
	 @Inject
	private  SignDAO dao2;

	@Override
	public void sign_write(SignVO vo) throws Exception {
		// TODO 테이블에 insert할 dao에 있는 메소드를 가져온다. 
		dao.sign_write(vo);
		System.out.println("서비스의 sign_write메소드 실행");
	}

	@Override
	public String login_check(SignVO vo, HttpSession session) {
		// TODO 로그인 체크 메소드 사용자가 아이디와 패스워드를 치면 vo에
		// 담아서 넘긴다.
		// 맞으면 이름이 넘어오고 틀리면 null이 넘어온다.
		String name = dao2.login_check(vo); 
		
		System.out.println("서비스의 sign_write메소드 실행");
		System.out.println("가져온 이름은? "+name);

		// 세션 변수 등록
		if(name!=null) { // 맞으면
			session.setAttribute("id", vo.getId());
			session.setAttribute("name", name);
		}
		return name;
	}

	@Override
	public void log_out(HttpSession session) {
		// TODO 로그아웃 메소드
		
	}

	
}

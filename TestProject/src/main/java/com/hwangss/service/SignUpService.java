package com.hwangss.service;

import javax.servlet.http.HttpSession;

import com.hwangss.domain.SignVO;

public interface SignUpService {
	
	public void sign_write(SignVO vo)throws Exception;
	
	// HttpSession == 사용자 인증 정보를 처리하는 클래스
	public String login_check(SignVO vo, HttpSession sesseion);
	public void log_out(HttpSession session);
	
	
	
}

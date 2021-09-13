package com.hwangss.dao;

import com.hwangss.domain.SignVO;

public interface SignDAO {
	
	// 가입테이블에 등록
	public void sign_write(SignVO vo) throws Exception;
	
	// 로그인 체크 기능
	public String login_check(SignVO vo);
}

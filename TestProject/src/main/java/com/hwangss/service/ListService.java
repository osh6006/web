package com.hwangss.service;

import java.util.List;

import com.hwangss.domain.PlayerVO;


public interface ListService {
	public List<PlayerVO> list() throws Exception;
	public void doWrite(PlayerVO vo)throws Exception;
	
	
}

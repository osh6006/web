package com.hwangss.dao;

import java.util.List;

import com.hwangss.domain.PlayerVO;

public interface ListDAO {
	 public List list() throws Exception;
	 public void doWrite(PlayerVO vo)throws Exception;

}

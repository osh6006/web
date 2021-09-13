package com.hwangss.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hwangss.domain.PlayerVO;

@Repository
public class ListDAOImpl implements ListDAO{
	
	 @Inject
	 private SqlSession sql;
	 
	 private static String namespace = "mappers.boardMapper";

	 // 게시물 목록
	 @Override
	 public List list() throws Exception { 
	  
	  return sql.selectList(namespace + ".list");
	 }

	@Override
	public void doWrite(PlayerVO vo) throws Exception {
		// TODO 값을 매퍼로 넘겨주기 namespace와 id로 구분하여 넘어간다.
		System.out.println("DAO의 doWrite 메소드 시작");
		sql.insert(namespace+".doWrite",vo);
		
		
	}


	
}

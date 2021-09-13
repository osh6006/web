package com.hwangss.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hwangss.dao.ListDAO;
import com.hwangss.domain.PlayerVO;
@Service
public class ListServiceImpl implements ListService{
	
	 @Inject
	 private ListDAO dao;

	@Override
	public List<PlayerVO> list() throws Exception {
		// TODO id와 목록들을 불러온다.
		System.out.println("서비스 list() 함수 실행");
		return dao.list();
	}

	@Override
	public void doWrite(PlayerVO vo) throws Exception {
		// TODO 서비스의 doWrite 메소드
		System.out.println("서비스의 doWrite 메소드 시작");
		dao.doWrite(vo);
		
	}

		
	}


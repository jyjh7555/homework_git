package com.kh.homeWork.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.admin.model.dao.AdminDAO;
import com.kh.homeWork.board.model.dao.BoardDAO;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.surpport.model.vo.Pay;

@Service("aService")
public class AdminServiceimpl implements AdminService {
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	@Autowired
	private AdminDAO aDAO;
	
	@Override
	public int getListCount() {
		return aDAO.getListCount(sqlSession);
	}

	@Override
	public ArrayList<Pay> adminPayList(PageInfo pi) {
		return aDAO.adminPayList(sqlSession, pi);
	}
	@Override
	public int getListCount(int i) {
		return aDAO.getListCount(sqlSession,i);
	}

	@Override
	public ArrayList<Board> selectBoardList(PageInfo pi, int i) {
		return aDAO.selectBoardList(sqlSession,pi,i);
	}

	@Override
	public Board selectBoard(int bId, int memberNo) {
		Board b = aDAO.selectBoardList(sqlSession, bId);
		
		if(b != null) {
			if(memberNo != 0 && b.getMemberNo() != memberNo) {
				int result = aDAO.updateCount(sqlSession,bId);
				if(result>0) {
					b.setBoardCount(b.getBoardCount()+1);
				}
			}
		}
		return b;
	}

	@Override
	public VolunteerDetail adminBoardDetail(int bId) {
		return aDAO.adminBoardDetail(sqlSession, bId);
	}

	
	
}

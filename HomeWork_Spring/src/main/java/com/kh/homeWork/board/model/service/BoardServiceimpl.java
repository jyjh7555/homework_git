package com.kh.homeWork.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.board.model.dao.BoardDAO;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.VolunteerDetail;

@Service("bService")
public class BoardServiceimpl implements BoardService {
	
	@Autowired
	private SqlSessionTemplate sqlSession; // 프레임워크가 객체를 만들어준거기 떄문에 어노테이션으로 연결해준다.
	
	@Autowired
	private BoardDAO bDAO;
	
	@Override
	public int getListCount(int i) {
		return bDAO.getListCount(sqlSession,i);
	}

	@Override
	public ArrayList<Board> selectBoardList(PageInfo pi, int boardTypeNum) {
		return bDAO.selectBoardList(sqlSession,pi,boardTypeNum);
	}

	@Override
	public Board selectBoard(int bId, int memberNo) {
		Board b = bDAO.selectBoardList(sqlSession, bId);
		
		if(b != null) {
			if(memberNo != 0 && b.getMemberNo() != memberNo) {
				int result = bDAO.updateCount(sqlSession,bId);
				if(result>0) {
					b.setBoardCount(b.getBoardCount()+1);
				}
			}
		}
		return b;
	}

	@Override
	public int insertBoard(Board b) {
		return bDAO.insertBoard(sqlSession, b);
	}

	@Override
	public int insertVolunteer(VolunteerDetail v) {
		return bDAO.insertVolunteer(sqlSession,v);
	}

	@Override
	public int selectBoardNoCheck() {
		return bDAO.selectBoardNoCheck(sqlSession);
	}

	@Override
	public VolunteerDetail selectVolunteerDetail(int bId) {
		return bDAO.selectVolunteerDetail(sqlSession,bId);
	}

	@Override
	public ArrayList<Board> regionBoardList(String region,PageInfo pi) {
		return bDAO.regionBoardList(sqlSession,region,pi);
	}


	@Override
	public int getRegionListCount(String region) {
		return bDAO.getRegionListCount(sqlSession,region);
	}



}

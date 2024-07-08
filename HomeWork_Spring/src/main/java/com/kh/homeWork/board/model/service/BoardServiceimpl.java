package com.kh.homeWork.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.board.model.dao.BoardDAO;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;

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
	public ArrayList<Board> selectBoardList(PageInfo pi, int i) {
		return bDAO.selectBoardList(sqlSession,pi,i);
	}

	@Override
	public Board selectBoard(int bId, int memberNo) {
		Board b = bDAO.selectBoardList(sqlSession, bId);
		
		System.out.println("임플검사");
		if(b != null) {
			System.out.println("여기까찐되어야함");
			System.out.println(b.getBoardNo() + " , " + memberNo);
			if(memberNo != 0 && b.getMemberNo() != memberNo) {
				System.out.println("여기되는지파아갛기");
				int result = bDAO.updateCount(sqlSession,bId);
				if(result>0) {
					b.setBoardCount(b.getBoardCount()+1);
				}
			}
		}
		return b;
	}

}

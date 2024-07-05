package com.kh.homeWork.board.sevice;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.board.dao.BoardDAO;
import com.kh.homeWork.member.model.vo.Board;
import com.kh.homeWork.member.model.vo.PageInfo;

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

}

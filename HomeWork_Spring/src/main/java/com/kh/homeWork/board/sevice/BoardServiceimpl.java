package com.kh.homeWork.board.sevice;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.homeWork.board.dao.BoardDAO;
import com.kh.homeWork.member.model.vo.Board;
import com.kh.homeWork.member.model.vo.PageInfo;

public class BoardServiceimpl implements BoardService {
	
	@Autowired
	private SqlSessionTemplate sqlSession; // 프레임워크가 객체를 만들어준거기 떄문에 어노테이션으로 연결해준다.
	
	@Autowired
	private BoardDAO bDAO;
	
	@Override
	public int getListCount(int i) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Board> selectBoardList(PageInfo pi, int i) {
		// TODO Auto-generated method stub
		return null;
	}

}

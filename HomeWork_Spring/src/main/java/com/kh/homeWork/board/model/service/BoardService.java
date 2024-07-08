package com.kh.homeWork.board.model.service;

import java.util.ArrayList;

import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.VolunteerDetail;

public interface BoardService {

	int getListCount(int i);

	ArrayList<Board> selectBoardList(PageInfo pi, int i);

	Board selectBoard(int bId, int memberNo);

	int insertBoard(Board b);

	int insertVolunteer(VolunteerDetail v);

	int selectBoardNoCheck();
	
}

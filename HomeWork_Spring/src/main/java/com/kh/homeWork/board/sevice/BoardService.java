package com.kh.homeWork.board.sevice;

import java.util.ArrayList;

import com.kh.homeWork.member.model.vo.Board;
import com.kh.homeWork.member.model.vo.PageInfo;

public interface BoardService {

	int getListCount(int i);

	ArrayList<Board> selectBoardList(PageInfo pi, int i);
	
}

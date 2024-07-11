package com.kh.homeWork.admin.model.service;

import java.util.ArrayList;

import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.surpport.model.vo.Pay;

public interface AdminService {

	int getListCount();
	
	ArrayList<Pay> adminPayList(PageInfo pi);
	
	int getListCount(int i);

	ArrayList<Board> selectBoardList(PageInfo pi, int i);

	Board selectBoard(int bId, int memberNo);

	VolunteerDetail adminBoardDetail(int bId);



	
}

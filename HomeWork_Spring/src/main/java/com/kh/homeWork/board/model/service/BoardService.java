package com.kh.homeWork.board.model.service;

import java.util.ArrayList;

import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.Reply;
import com.kh.homeWork.board.model.vo.VolunteerDetail;

public interface BoardService {

	int getListCount(int i);

	ArrayList<Board> selectBoardList(PageInfo pi, int boardTypeNum);

	Board selectBoard(int bId, int memberNo);

	int insertBoard(Board b);

	int insertVolunteer(VolunteerDetail v);

	int selectBoardNoCheck();

	VolunteerDetail selectVolunteerDetail(int bId);

	int updateBoard(Board b);

	int updateVolunteerDetail(VolunteerDetail v);

	int deleteBoard(int bNo);

	int insertReply(Reply r);

	ArrayList<Reply> selectReply(int bId);

	int updateReply(Reply r);

	Reply selectOneReply(Reply r);

	int deleteReply(Reply r);
	
}

package com.kh.homeWork.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.homeWork.Volunteer.model.Volunteer;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.Reply;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.vo.Pay;

public interface AdminService {

	ArrayList<Board> selectBoardList(PageInfo pi, int boardTypeNum);

	Board selectBoard(int bId, int memberNo);

	VolunteerDetail adminBoardDetail(int bId);

	ArrayList<Member> adminMemberList(PageInfo pi);

	ArrayList<Member> adminStatusMember(PageInfo pi);

	int adminDelete(int mNo);

	int adminUpdate(Member m);

	int updateStatus(HashMap<String, String> m);

	int updateAdmin(Member m);

	ArrayList<Member> searchMember(HashMap<String, Object> map);

	int getListCountMember();

	int getListCountPay();
	
	ArrayList<Pay> adminPayList(PageInfo pi);
	
	int getListCountBoard(int boarTypeNum);

	int adminInsertBoard(Board b);
	
	int adminDeleteBoard(int bNo);

	Member adminSelectMember(int memberNo);

	ArrayList<Pay> adminSelectPay(int memberNo);

	int adminUpdateMember(Member m);

	ArrayList<Reply> selectReply(int bId);

	int adminSelectBoardNoCheck();

	int adminInsertVolunteer(VolunteerDetail v);

	VolunteerDetail adminSlectVolunteerDetail(int bId);

	int adminUpdateBoard(Board b);

	int adminUpdateVolunteerDetail(VolunteerDetail v);

	int getListCountVolunteer();

	int totalMember();

	int activeMember();

	int totalBoard();

	int totalAmount();

	ArrayList<Volunteer> adminVolunteerList(PageInfo pi);

	int adminVolunteerUpdate(Volunteer v);

	


	
}

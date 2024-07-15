package com.kh.homeWork.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.Volunteer.model.Volunteer;
import com.kh.homeWork.admin.model.dao.AdminDAO;
import com.kh.homeWork.board.model.dao.BoardDAO;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.Reply;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.vo.Pay;

@Service("aService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Autowired
	private AdminDAO aDAO;
	
	@Override
	public int getListCountMember() {
		return aDAO.getListCountMember(sqlSession);
	}

	@Override
	public ArrayList<Member> adminMemberList(PageInfo pi) {
		return aDAO.adminMemberList(sqlSession, pi);
	}

	@Override
	public ArrayList<Member> adminStatusMember(PageInfo pi) {
		return aDAO.adminStatusMember(sqlSession, pi);
	}

	@Override
	public int adminDelete(int mNo) {
		return aDAO.adminDelete(sqlSession, mNo);
	}

	@Override
	public int adminUpdate(Member m) {
		return aDAO.adminUpdate(sqlSession, m);
	}

	@Override
	public int updateStatus(HashMap<String, String> m) {
		return aDAO.updateStatus(sqlSession, m);
	}

	@Override
	public int updateAdmin(Member m) {
		return aDAO.updateAdmin(sqlSession, m);
	}

	@Override
	public ArrayList<Member> searchMember(HashMap<String, Object> map) {
		return aDAO.searchMember(sqlSession, map);
	}
	
	
	@Override
	public ArrayList<Pay> adminPayList(PageInfo pi) {
		return aDAO.adminPayList(sqlSession, pi);
	}
	@Override
	public int getListCountBoard(int boardTypeNum) {
		return aDAO.getListCountBoard(sqlSession, boardTypeNum);
	}

	@Override
	public ArrayList<Board> selectBoardList(PageInfo pi, int boardTypeNum) {
		return aDAO.selectBoardList(sqlSession,pi,boardTypeNum);
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

	@Override
	public int getListCountPay() {
		return aDAO.getListCountPay(sqlSession);
	}

	@Override
	public int adminInsertBoard(Board b) {
		return aDAO.adminInsertBoard(sqlSession, b);
	}
	
	@Override
	public int adminDeleteBoard(int bNo) {
		return aDAO.adminDeleteBoard(sqlSession, bNo);
	}

	@Override
	public Member adminSelectMember(int memberNo) {
		return aDAO.adminSelectMember(sqlSession, memberNo);
	}

	@Override
	public ArrayList<Pay> adminSelectPay(int memberNo) {
		return aDAO.adminSelectPay(sqlSession, memberNo);
	}

	@Override
	public int adminUpdateMember(Member m) {
		return aDAO.adminUpdateMember(sqlSession, m);
	}

	@Override
	public ArrayList<Reply> selectReply(int bId) {
		return aDAO.adminSelectReply(sqlSession, bId);
	}

	@Override
	public int adminSelectBoardNoCheck() {
		return aDAO.adminSelectBoardNoCheck(sqlSession);
	}

	@Override
	public int adminInsertVolunteer(VolunteerDetail v) {
		return aDAO.adminInsertVolunteer(sqlSession, v);
	}

	@Override
	public VolunteerDetail adminSlectVolunteerDetail(int bId) {
		return aDAO.adminSelectVolunteerDetail(sqlSession, bId);
	}

	@Override
	public int adminUpdateBoard(Board b) {
		return aDAO.adminUpdateBoard(sqlSession, b);
	}

	@Override
	public int adminUpdateVolunteerDetail(VolunteerDetail v) {
		return aDAO.adminUpdateVolunteerDetail(sqlSession, v);
	}

	@Override
	public int getListCountVolunteer() {
		return aDAO.getListCountVolunteer(sqlSession);
	}

	@Override
	public int totalMember() {
		return aDAO.totalMember(sqlSession);
	}

	@Override
	public int activeMember() {
		return aDAO.activeMember(sqlSession);
	}

	@Override
	public int totalBoard() {
		return aDAO.totalBoard(sqlSession);
	}

	@Override
	public int totalAmount() {
		return aDAO.totalAmount(sqlSession);
	}

	@Override
	public ArrayList<Volunteer> adminVolunteerList(PageInfo pi) {
		return aDAO.adminVolunteerList(sqlSession, pi);
	}

	



	
	
}

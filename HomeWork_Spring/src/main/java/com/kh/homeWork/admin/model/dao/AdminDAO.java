package com.kh.homeWork.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.homeWork.Volunteer.model.Volunteer;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.Reply;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.vo.Pay;

@Repository("aDAO")
public class AdminDAO {
	
	public ArrayList<Member> adminMemberList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminMapper.adminMemberList", null, rowBounds);
	}
	
	public ArrayList<Member> adminStatusMember(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminMapper.adminStatusMember", null, rowBounds);
	}
	
	public int adminDelete(SqlSessionTemplate sqlSession, int mNo) {
		return sqlSession.update("adminMapper.adminDelete", mNo);
	}

	public int adminUpdate(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("adminMapper.adminUpdate", m);
	}

	public int updateStatus(SqlSessionTemplate sqlSession, HashMap<String, String> m) {
		return sqlSession.update("adminMapper.updateStatus", m);
	}

	public int updateAdmin(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("adminMapper.updateAdmin", m);
	}
	
	public ArrayList<Member> searchMember(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return (ArrayList)sqlSession.selectList("adminMapper.searchMember", map);
	}
	
	public int getListCountPay(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.getListCountPay");
	}
	
	public ArrayList<Pay> adminPayList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminMapper.adminPayList", null, rowBounds);
		
	}

	public int getListCountBoard(SqlSessionTemplate sqlSession, int boardTypeNum) {
		return sqlSession.selectOne("adminMapper.getListCountBoard",boardTypeNum);
	}

	public ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi, int boardTypeNum) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectBoardList",boardTypeNum,rowBounds);
	}

	public Board selectBoardList(SqlSessionTemplate sqlSession, int bId) {
		return sqlSession.selectOne("adminMapper.selectBoard",bId);
	}

	public int updateCount(SqlSessionTemplate sqlSession, int bId) {
		return sqlSession.update("adminMapper.updateCount",bId);
	}

	public VolunteerDetail adminBoardDetail(SqlSessionTemplate sqlSession, int bId) {
		return sqlSession.selectOne("adminMapper.adminBoardDetail", bId);
	}

	public int getListCountMember(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.getListCountMember");
	}

	public int adminInsertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("adminMapper.adminInsertBoard", b);
	}
	
	public int adminDeleteBoard(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.update("adminMapper.adminDeleteBoard", bNo);
	}

	public Member adminSelectMember(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("adminMapper.adminSelectMember", memberNo);
	}

	public ArrayList<Pay> adminSelectPay(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList)sqlSession.selectList("adminMapper.adminSelectPay", memberNo);
	}

	public int adminUpdateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("adminMapper.adminUpdateMember", m);
	}


	public ArrayList<Reply> adminSelectReply(SqlSessionTemplate sqlSession, int bId) {
		return (ArrayList)sqlSession.selectList("adminMapper.adminSelectReply", bId);
	}

	public int adminSelectBoardNoCheck(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.adminSelectBoardNoCheck");
	}

	public int adminInsertVolunteer(SqlSessionTemplate sqlSession, VolunteerDetail v) {
		return sqlSession.insert("adminMapper.adminInsertVolunteer", v);
	}

	public VolunteerDetail adminSelectVolunteerDetail(SqlSessionTemplate sqlSession, int bId) {
		return sqlSession.selectOne("adminMapper.adminSelectVolunteerDetail", bId);
	}

	public int adminUpdateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("adminMapper.adminUpdateBoard", b);
	}

	public int adminUpdateVolunteerDetail(SqlSessionTemplate sqlSession, VolunteerDetail v) {
		return sqlSession.update("adminMapper.adminUpdateVolunteerDetail", v);
	}

	public int getListCountVolunteer(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.getListCountVolunteer");
	}

	public int totalMember(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.totalMember");
	}

	public int activeMember(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.activeMember");
	}

	public int totalBoard(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.totalBoard");
	}

	public int totalAmount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.totalAmount");
	}

	public ArrayList<Volunteer> adminVolunteerList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminMapper.adminVolunteerList", null, rowBounds);
	}

	public int adminVolunteerUpdate(SqlSessionTemplate sqlSession, Volunteer v) {
		return sqlSession.update("adminMapper.adminVolunteerUpdate", v);
	}

	

	

	


}

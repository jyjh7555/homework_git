package com.kh.homeWork.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
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

	public int getListCountBoard(SqlSessionTemplate sqlSession, int i) {
		return sqlSession.selectOne("adminMapper.getListCountBoard",i);
	}

	public ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi, int i) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectBoardList",i,rowBounds);
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

	

	


}

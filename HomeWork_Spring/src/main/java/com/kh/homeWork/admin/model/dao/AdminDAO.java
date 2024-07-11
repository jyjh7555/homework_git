package com.kh.homeWork.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.surpport.model.vo.Pay;

@Repository("aDAO")
public class AdminDAO {
	
	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.getListCountPay");
	}
	
	public ArrayList<Pay> adminPayList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminMapper.adminPayList", null, rowBounds);
		
	}

	public int getListCount(SqlSessionTemplate sqlSession, int i) {
		return sqlSession.selectOne("adminMapper.getListCount",i);
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

	


}

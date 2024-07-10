package com.kh.homeWork.surpport.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.surpport.model.vo.Pay;

@Repository
public class PayDAO {

	public int insertPay(SqlSessionTemplate sqlSession, Pay pay) {
		return sqlSession.insert("payMapper.insertPay",pay);
	}

	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("payMapper.getListCount");
	}

	public ArrayList<Pay> adminPayList(SqlSessionTemplate sqlSession, PageInfo pi) {
		return (ArrayList)sqlSession.selectList("payMapper.adminPayList");
	}

}

package com.kh.homeWork.surpport.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.surpport.model.dao.PayDAO;
import com.kh.homeWork.surpport.model.vo.Pay;

@Service("pService")
public class PayServiceImpl implements PayService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private PayDAO pDAO;
	
	
	@Override
	public int insertPay(Pay pay) {
		return pDAO.insertPay(sqlSession,pay);
	}


	@Override
	public int getListCount() {
		return pDAO.getListCount(sqlSession);
	}


	@Override
	public ArrayList<Pay> adminPayList(PageInfo pi) {
		return pDAO.adminPayList(sqlSession, pi);
	}

}

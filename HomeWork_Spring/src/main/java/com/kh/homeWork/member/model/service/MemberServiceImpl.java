package com.kh.homeWork.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.member.model.dao.MemberDAO;
import com.kh.homeWork.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDAO mDAO;

	@Override
	public Member loginCheck(Member m) {
		Member loginUser = mDAO.loginCheck(sqlSession, m);
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		return mDAO.insertMember(sqlSession,m);
	}

	@Override
	public String selectId(HashMap<String, String> map) {
		return mDAO.selectId(sqlSession, map);
	}

	@Override
	public int updateTempPwd(HashMap<String, String> map) {
		return mDAO.updateTempPwd(sqlSession, map);
	}



	
}

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

	@Override
	public ArrayList<Member> adminSelectMember() {
		return mDAO.adminSelectMember(sqlSession);
	}

	@Override
	public int adminDelete(int mNo) {
		return mDAO.adminDelete(sqlSession, mNo);
	}

	@Override
	public int adminUpdate(Member m) {
		return mDAO.adminUpdate(sqlSession, m);
	}

	@Override
	public ArrayList<Member> searchMember(HashMap<String, String> map) {
		return mDAO.searchMember(sqlSession, map);
	}

	@Override
	public int updateStatus(Member m) {
		return mDAO.updateStatus(sqlSession, m);
	}



	
}

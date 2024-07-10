package com.kh.homeWork.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.member.model.dao.MemberDAO;
import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.vo.Pay;

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

	public int updateMember(Member m) {
		return mDAO.updateMember(sqlSession, m);
	}

	

	public String selectId(HashMap<String, String> map) {
		return mDAO.selectId(sqlSession, map);
	}

	@Override
	public int updateTempPwd(HashMap<String, String> map) {
		return mDAO.updateTempPwd(sqlSession, map);
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
	public ArrayList<Member> searchMember(HashMap<String, Object> map) {
		return mDAO.searchMember(sqlSession, map);
	}

	@Override
	public int updateStatus(HashMap<String, String> m) {
		return mDAO.updateStatus(sqlSession, m);
	}

	@Override
	public int updateAdmin(Member m) {
		return mDAO.updateAdmin(sqlSession, m);
	}

	public int checkMemberId(String id) {
		return mDAO.checkMemberId(sqlSession,id);
	}

	@Override
	public int checkMemberNickName(String nickName) {
		return mDAO.checkMemberNickName(sqlSession,nickName);
	}

	@Override
	public ArrayList<Pay> SelectPay() {
		return mDAO.selectPay(sqlSession);
	}

	@Override
	public ArrayList<Member> adminMemberList(PageInfo pi) {
		return mDAO.adminMemberList(sqlSession, pi);
	}

	@Override
	public ArrayList<Member> adminStatusMember(PageInfo pi) {
		return mDAO.adminStatusMember(sqlSession, pi);
	}

	@Override
	public ArrayList<Pay> adminPayList() {
		return mDAO.adminPayList(sqlSession);
	}

	@Override
	public int getListCount() {
		return mDAO.getListCount(sqlSession);
	}

	


	
}

package com.kh.homeWork.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.vo.Pay;

@Repository("mDAO")
public class MemberDAO {

	public Member loginCheck(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginCheck", m);
	}

	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember",m);
	}


	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}

	public String selectId(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("memberMapper.selectId", map);
	}

	public int updateTempPwd(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.update("memberMapper.updateTempPwd", map);
	}

	public ArrayList<Member> adminSelectMember(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.adminSelectMember");
	}

	public int adminDelete(SqlSessionTemplate sqlSession, int mNo) {
		return sqlSession.update("memberMapper.adminDelete", mNo);
	}

	public int adminUpdate(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.adminUpdate", m);
	}

	public ArrayList<Member> searchMember(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return (ArrayList)sqlSession.selectList("memberMapper.searchMember", map);
	}

	public int updateStatus(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateStatus", m);
	}

	public int updateAdmin(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateAdmin", m);
	}

	public int checkMemberId(SqlSessionTemplate sqlSession, String id) {
		return sqlSession.selectOne("memberMapper.checkMemberId",id);
	}

	public int checkMemberNickName(SqlSessionTemplate sqlSession, String nickName) {
		return sqlSession.selectOne("memberMapper.checkMemberNickName",nickName);
	}

	public ArrayList<Pay> selectPay(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectPay");
	}




}

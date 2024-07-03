package com.kh.homeWork.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.homeWork.member.model.vo.Member;

@Repository("mDAO")
public class MemberDAO {

	public Member loginCheck(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginCheck", m);
	}

	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember",m);
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

	public int adminUpdate(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.update("memberMapper.adminUpdate", map);
	}



}

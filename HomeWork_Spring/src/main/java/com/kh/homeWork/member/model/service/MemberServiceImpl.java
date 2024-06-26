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

	}

	@Override
	public ArrayList<HashMap<String, Object>> adminSelectMember() {
		return mDAO.adminSelectMember(sqlSession);
	}
	
	
}

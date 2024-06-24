package com.kh.homeWork.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeWork.member.model.dao.MemberDAO;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO mDAO;
	
	
}

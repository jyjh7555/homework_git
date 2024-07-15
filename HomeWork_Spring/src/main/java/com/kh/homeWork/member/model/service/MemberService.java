package com.kh.homeWork.member.model.service;

import java.util.HashMap;

import com.kh.homeWork.member.model.vo.Member;

public interface MemberService{

	Member loginCheck(Member m);

	int insertMember(Member m);

	int updateMember(Member m);

	
	String selectId(HashMap<String, String> map);

	int updateTempPwd(HashMap<String, String> map);


	int checkMemberId(String id);

	int checkMemberNickName(String nickName);

	int updatePassword(HashMap<String, String> map);

	

	






}

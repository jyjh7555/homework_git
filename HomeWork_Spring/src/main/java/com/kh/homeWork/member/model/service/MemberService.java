package com.kh.homeWork.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.vo.Pay;

public interface MemberService{

	Member loginCheck(Member m);

	int insertMember(Member m);

	int updateMember(Member m);

	
	String selectId(HashMap<String, String> map);

	int updateTempPwd(HashMap<String, String> map);


	int checkMemberId(String id);

	int checkMemberNickName(String nickName);






}

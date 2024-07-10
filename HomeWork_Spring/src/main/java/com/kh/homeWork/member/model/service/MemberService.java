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



	int adminDelete(int mNo);

	int adminUpdate(Member m);

	ArrayList<Member> searchMember(HashMap<String, Object> map);

	int updateStatus(HashMap<String, String> m);

	int updateAdmin(Member m);

	int checkMemberId(String id);

	int checkMemberNickName(String nickName);

	ArrayList<Pay> SelectPay();

	ArrayList<Member> adminMemberList(PageInfo pi);

	ArrayList<Member> adminStatusMember(PageInfo pi);

	ArrayList<Pay> adminPayList();

	int getListCount();






}

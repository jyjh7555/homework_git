package com.kh.homeWork.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.homeWork.member.model.service.MemberService;
import com.kh.homeWork.member.model.vo.Member;

@Controller
public class MemberController {
	
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("loginView.me")
	public String loginView(@ModelAttribute Member m) {
		
		
		return "login";
	}
	
	
	
	@RequestMapping("loginCheck.me")
	public String loginCheck(@ModelAttribute Member m) {
		
		
		System.out.println(m.getMemberId());
		System.out.println(m.getMemberPwd());
		
		
		//Member loginUser = mService.loginCheck(m);
		
		
		return "../home";
	}
}

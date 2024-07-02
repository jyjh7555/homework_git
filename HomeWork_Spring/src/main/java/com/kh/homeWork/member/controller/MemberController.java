package com.kh.homeWork.member.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.homeWork.member.model.service.MemberService;
import com.kh.homeWork.member.model.vo.Member;

@Controller
public class MemberController {
	
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;
	
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("loginView.me")
	public String loginView(@ModelAttribute Member m) {
		return "login";
	}
	
	
	@RequestMapping("loginCheck.me")
	public String loginCheck(Member m, Model model, HttpSession session) {
		
		Member loginUser = mService.loginCheck(m);
		if(bcrypt.matches(m.getMemberPwd(), loginUser.getMemberPwd())) {
			session.setAttribute("loginUser", loginUser);			
			return "../../../index";				
		}else {
			model.addAttribute("msg", "로그인에 실패하였습니다."); // request.setAttribute("msg", "~~");
			return "login";
		}
	}
	
	
	@RequestMapping("admin.me")
	public String adminPage(@ModelAttribute Member m) {
		return "admin";
	}
	
	@RequestMapping("logout.me")
	public String logout(HttpServletRequest request) {
	    HttpSession session = request.getSession(false);
	    if (session != null) {
	        session.invalidate(); // �꽭�뀡 臾댄슚�솕
	    }
	    return "redirect:index.jsp";
	}
	
	@RequestMapping("signUp.me")
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping("myPage.me")
	public String myPage() {
		return "myPage";
	}
	
	@RequestMapping("insertMember.me")
	public String insertMember(@ModelAttribute Member m,
							  @RequestParam("emailId") String emailId,
							  @RequestParam("emailDomain") String emailDomain,
							  @RequestParam("phone") String phone) {
		
		String email = null;
		if(!emailId.equals("")) {
			email = emailId + "@" + emailDomain;
		}
		m.setEmail(email);
		m.setPhone(phone.replace(",", "-"));
		m.setMemberPwd(bcrypt.encode(m.getMemberPwd()));	//�븫�샇�솕 �떆�옉
		int result = mService.insertMember(m);
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping("updateMemberPage.me")
	public String updateMember() {
		return "edit";
	}
	
	@RequestMapping("updateMember.me")
	public String updateMember(@ModelAttribute Member m,@RequestParam("id") String id, @RequestParam("emailId") String emailId, @RequestParam("emailDomain") String emailDomain,@RequestParam("phone") String phone,Model model) {
		String email = null;
		if(!emailId.trim().equals("")) {
			email = emailId + "@" + emailDomain;
		}
		m.setEmail(email);
		m.setPhone(phone.replace(",", "-"));
		m.setMemberId(id);

		int result = mService.updateMember(m);
		
		if(result > 0) {
			model.addAttribute("loginUser",mService.loginCheck(m)); // session에 있는 정보도 수정
			return "redirect:myPage.me";
		} else {
			return "redirect:index.jsp";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}

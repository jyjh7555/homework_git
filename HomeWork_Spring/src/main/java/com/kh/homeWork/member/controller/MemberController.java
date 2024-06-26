package com.kh.homeWork.member.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String loginCheck(Member m, Model model, HttpSession session) {
		
		Member loginUser = mService.loginCheck(m);
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);			
			return "../../../index";				
		}else {
			model.addAttribute("msg", "로그인에 실패하였습니다."); // request.setAttribute("msg", "~~");
			return "../common/errorPage";
		
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
	        session.invalidate(); // 세션 무효화
	    }
	    return "redirect:index.jsp";
	}
	
<<<<<<< HEAD
	@RequestMapping("adminSelectMember.me")
	public String adminSelectMember(Model model){
		ArrayList<HashMap<String, Object>> list = mService.adminSelectMember();
		model.addAttribute("list", list);
		return "admin";
	}
=======
	@RequestMapping("signUp.me")
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping("myPage.me")
	public String myPage() {
		return null;
	}
	
	
>>>>>>> branch 'main' of https://github.com/jyjh7555/homework_git.git
}

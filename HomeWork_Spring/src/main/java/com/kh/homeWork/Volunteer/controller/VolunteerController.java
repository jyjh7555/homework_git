package com.kh.homeWork.Volunteer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.homeWork.Volunteer.model.Volunteer;
import com.kh.homeWork.Volunteer.service.VolunteerService;
import com.kh.homeWork.member.model.vo.Member;



@Controller
public class VolunteerController {
	@Autowired
	private VolunteerService vService;
	
	@RequestMapping("insertVolunteer.vo")
	public String insertVolunteer(HttpSession session,@RequestParam("boardNo") int boardNo, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		 if(loginUser == null) {
		        model.addAttribute("msg", "로그인이 필요합니다.");
		        return "redirect:${contextPath}/login.me";
		    }	
		int memberNo = loginUser.getMemberNo();
		Integer volunteerNo = vService.getVolunteerNoByBoardNo(boardNo);
		System.out.println(volunteerNo);
		if(volunteerNo == null) {
            model.addAttribute("msg", "해당 게시글에 대한 봉사 정보가 없습니다.");
            return "errorPage";
        }

		Volunteer volunteer = new Volunteer();
        volunteer.setMemberNo(memberNo);
        volunteer.setVolunteerNo(volunteerNo);
        volunteer.setStatus("W"); // 대기 상태로 설정
        
        int result = vService.insertVolunteer(volunteer);
		
		if(result > 0) {
			model.addAttribute("msg","신청완료되었습니다");
			return "redirect:/myPage.me";
		} else {
			return "redirect:index.jsp";
		}
	}
	
}

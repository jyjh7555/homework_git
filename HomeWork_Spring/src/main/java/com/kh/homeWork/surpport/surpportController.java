package com.kh.homeWork.surpport;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.homeWork.member.model.vo.Member;

@Controller
public class surpportController {
	
	@RequestMapping("surpport.su")
	public String sponserMain(HttpSession session,Model model) {
		Member m = (Member)session.getAttribute("loginUser");
		if(m != null) {
			int mid = Integer.parseInt(m.getPhone().substring(4, 8));
			int last = Integer.parseInt(m.getPhone().substring(9, 13));
			model.addAttribute("midPhone",mid);
			model.addAttribute("lastPhone",last);
		}
		
		return "surpportMain";
	}
	
}

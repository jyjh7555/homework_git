package com.kh.homeWork.surpport;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("successPay.su")
	public String successPay(@RequestParam(value="success") boolean success,@RequestParam("merchantUid") String uId) {
		System.out.println(success);
		System.out.println(uId);
		return "terms";
	}
	
}

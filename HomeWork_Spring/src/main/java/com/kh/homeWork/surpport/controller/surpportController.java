package com.kh.homeWork.surpport.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.service.PayService;
import com.kh.homeWork.surpport.model.vo.Pay;

@Controller
public class surpportController {
	
	@Autowired
	private PayService pService;
	
	
	
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
	public String successPay(@RequestParam(value="success") boolean success,
							 @ModelAttribute Pay pay,
							 @RequestParam("phone") String phone,
							 @RequestParam(value="emailId",defaultValue="null") String emailId,
							 @RequestParam(value="emailDomain",defaultValue="") String emailDomain
							 ) {
		
		
		System.out.println(pay);
		System.out.println(pay.getMemberNo());
		
		if(success) {
			String email = null;
			if(!emailId.equals("")) {
				email = emailId + "@" + emailDomain;
			}
			pay.setBuyerEmail(email);
			pay.setBuyerTel(phone.replace(',', '-'));
			
			int result = pService.insertPay(pay);
			if(result>0){
				return "redirect:domestic01.in";
			}else {
				System.out.println("데이터 저장 실패");
			}
			
		}else {
			System.out.println("에러페이지 적용하기");
		}
		
		return "terms";
	}
	
}

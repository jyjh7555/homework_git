package com.kh.homeWork.surpport.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.service.PayService;

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
							 @RequestParam("merchantUid") String uId,
							 @RequestParam("phone") String phone,
							 @RequestParam(value="emailId",defaultValue="null") String emailId,
							 @RequestParam(value="emailDomain",defaultValue="") String emailDomain,
							 @RequestParam("product") String product,
							 @RequestParam("amount") String amount,
							 @RequestParam("buyerName") String buyerName) {
		System.out.println(success);
		System.out.println(uId);
		System.out.println(phone);
		System.out.println(emailId);
		System.out.println(product);
		System.out.println(amount);
		System.out.println(buyerName);
		return "terms";
	}
	
}

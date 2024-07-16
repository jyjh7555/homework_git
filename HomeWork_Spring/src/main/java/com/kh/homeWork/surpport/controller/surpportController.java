package com.kh.homeWork.surpport.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.homeWork.board.model.exception.BoardException;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.common.Pagination;
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
		
		
//		System.out.println(pay);
//		System.out.println(pay.getMemberNo());
		
		if(success) {
			String email = null;
			if(!emailId.equals("")) {					//이메일넣기
				email = emailId + "@" + emailDomain;
			}
			pay.setBuyerEmail(email);
			pay.setBuyerTel(phone.replace(',', '-'));	//폰번호넣기
			
			int result = pService.insertPay(pay);		//DB삽입
			if(result>0){
				return "redirect:home.do";		//추후 메인페이지
			}else {
				System.out.println("데이터 저장 실패");		//에러throw하기
			}
			
		}else {
			System.out.println("에러페이지 적용하기");		//에러throw하기
		}
		
		throw new BoardException("후원이 실패하였습니다");
	}
	
	
	
}

package com.kh.homeWork.surpport;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class surpportController {
	
	@RequestMapping("surpport.do")
	public String sponserMain() {
		return "../surpport/surpportMain";
	}
	
}

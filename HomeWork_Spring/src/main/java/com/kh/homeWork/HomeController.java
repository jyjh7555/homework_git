package com.kh.homeWork;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping("domestic01.in")
	public String intro1() {
		
		
		return "domestic01";
	}
	
	@RequestMapping("domestic02.in")
	public String intro2() {
		
		
		return "domestic02";
	}
	
	@RequestMapping("domestic03.in")
	public String intro3() {
		
		
		return "domestic03";
	}
	
	@RequestMapping("global01.in")
	public String global01() {
		return "global01";
	}
	
	@RequestMapping("global02.in")
	public String global02() {
		return "global02";
	}
	
	@RequestMapping("global03.in")
	public String global03() {
		return "global03";
	}
	
}

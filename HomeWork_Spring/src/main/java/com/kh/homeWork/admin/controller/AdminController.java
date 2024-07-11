package com.kh.homeWork.admin.controller;

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
import com.kh.homeWork.admin.model.service.AdminService;
import com.kh.homeWork.board.model.service.BoardService;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.common.Pagination;
import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.vo.Pay;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService aService;
	
	
	@RequestMapping("adminPayList.ad")
	@ResponseBody
	public void adminPayList(@RequestParam(value="page", defaultValue="1") int page,
						     @RequestParam(value="page", defaultValue="10") int size,
							  HttpServletResponse response
							   ) {
		int listCount = aService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(page, listCount, 5);
		
		ArrayList<Pay> payList = aService.adminPayList(pi);
		
		
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
	    result.put("pay", payList);
	    result.put("maxPage", pi.getMaxPage()); 
	    
		try {
			gson.toJson(result, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("adminDomesticList.ad")
	public String adminBoardList(@RequestParam(value="page", defaultValue="1") int currentPage, Model model) {
		int listCount = aService.getListCount(1);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 10);		
		ArrayList<Board> list = aService.selectBoardList(pi,1);
		
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			return "adminBoard";
	}
	
	@RequestMapping("adminSelectBoard.ad")
	public String selectBoard(@RequestParam("bId") int bId,
							  @RequestParam("page") int page,
							  HttpSession session,
							  Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int memberNo = 0;
		
		if(loginUser != null) {
			memberNo = loginUser.getMemberNo();
		}
		
		Board b = aService.selectBoard(bId,memberNo);	
		VolunteerDetail v = aService.adminBoardDetail(bId);
		model.addAttribute("b",b);
		model.addAttribute("v",v);
		model.addAttribute("page",page);
		
		
		return "adminDetail";
	}
	
}

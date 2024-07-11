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
	
	@RequestMapping("/adminMemberList.ad")
	@ResponseBody
	public void adminMemberList(@RequestParam(value="page", defaultValue = "1") int page,
								@RequestParam(value="size", defaultValue = "10") int size,
								HttpServletResponse response
							    ) {
	    
		int listCount = aService.getListCountMember();
		
		PageInfo pi = Pagination.getPageInfo(page, listCount, 5);
		
		System.out.println(listCount);
		System.out.println(pi);
		ArrayList<Member> list = aService.adminMemberList(pi);
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
	    result.put("member", list);
	    result.put("maxPage", pi.getMaxPage()); 
		try {
			gson.toJson(result, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/adminStatusMember.ad")
	@ResponseBody
	public void adminStatusMember(@RequestParam(value="page", defaultValue = "1") int page,
								  @RequestParam(value="size", defaultValue = "10") int size,
							      HttpServletResponse response
							      ) {
		int listCount = aService.getListCountMember();
		
		PageInfo pi = Pagination.getPageInfo(page, listCount, 5);
		
		ArrayList<Member> list = aService.adminStatusMember(pi);
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
	    result.put("member", list);
	    result.put("maxPage", pi.getMaxPage()); 
	    
		try {
			gson.toJson(result, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/adminDelete.ad")
	@ResponseBody
	public String adminDelete(@RequestParam("mNo") int mNo) {
		int result = aService.adminDelete(mNo);
		return result == 1? "success" : "fail";
	}
	

	@RequestMapping("/adminUpdate.ad")
	@ResponseBody
	public String adminUpdate(@ModelAttribute Member m) {
		System.out.println(m);
		int result = aService.adminUpdate(m);
		return result == 1? "success" : "fail";
	}
	
	
	
	@RequestMapping("/updateStatus.ad")
	@ResponseBody
	public String updateStatus(@RequestParam("status") String status,
							   @RequestParam("memberNo") String memberNo) {
		HashMap<String, String> m = new HashMap<String, String>();
		m.put("status", status);
		m.put("memberNo", memberNo);
		int result = aService.updateStatus(m);
		return result == 1? "success" : "fail";
	}
	
	@RequestMapping("/updateAdmin.ad")
	@ResponseBody
	public String updateAdmin(@ModelAttribute Member m ) {
		int result = aService.updateAdmin(m);
		return result == 1? "success" : "fail";
	}
	
	
	@RequestMapping("searchMember.ad")
	@ResponseBody
	public void searchMember(@RequestParam("type") String type,
							   @RequestParam("text") String text,
							   HttpServletResponse response,
							   Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("text", text);
		ArrayList<Member> searchList = aService.searchMember(map);
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		try {
			gson.toJson(searchList, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	@RequestMapping("adminPayList.ad")
	@ResponseBody
	public void adminPayList(@RequestParam(value="page", defaultValue="1") int page,
						     @RequestParam(value="page", defaultValue="10") int size,
							  HttpServletResponse response
							   ) {
		int listCount = aService.getListCountPay();
		
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
		int listCount = aService.getListCountBoard(1);
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

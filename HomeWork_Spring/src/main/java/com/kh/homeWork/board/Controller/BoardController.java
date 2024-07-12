package com.kh.homeWork.board.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.homeWork.board.model.service.BoardService;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.common.Pagination;
import com.kh.homeWork.member.model.vo.Member;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bService;
	
	@RequestMapping("{boardType}.bo")
	public String selectDomesticBoardList(@PathVariable String boardType,@RequestParam(value="page", defaultValue="1") int currentPage, Model model,HttpServletRequest request) {
										 // 변수명에 따라 url명이 달라진다.
		int boardTypeNum;
	    String viewName;
	    
	    switch (boardType) {
        case "domestic":
            boardTypeNum = 1;
            viewName = "domesticList";
            break;
        case "global":
        	boardTypeNum = 2;
            viewName = "globalList";
            break;
        case "review":
        	boardTypeNum = 3;
            viewName = "reviewList";
            break;
        default:
            return "errorPage";
    }
	    
	    
		int listCount = bService.getListCount(boardTypeNum);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5);		
		ArrayList<Board> list = bService.selectBoardList(pi,boardTypeNum);
		
		if(list !=null) {
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			return viewName;
		} else {
			return "korMap";
		}
	}
	
	@RequestMapping("volunteer.bo")
	public String test() {
		return "korMap";
	}
	
	@RequestMapping("selectBoard.bo")
	public String selectBoard(@RequestParam("bId") int bId,
							  @RequestParam("page") int page,
							  HttpSession session,
							  Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int memberNo = 0;
		
		if(loginUser != null) {
			memberNo = loginUser.getMemberNo();
		}
		
		Board b = bService.selectBoard(bId,memberNo);
		VolunteerDetail v = bService.selectVolunteerDetail(bId);
		model.addAttribute("b",b);
		model.addAttribute("v",v);
		model.addAttribute("page",page);
		
		
		return "boardDetail";
	}
	
	@RequestMapping("writeBoard.bo")
	public String writeBoard() {
		System.out.println("hi");
		return "writeBoard";
	}

	@RequestMapping("insertBoard.bo")
	public String insertBoard(@ModelAttribute Board b, @ModelAttribute VolunteerDetail v) {
		
		int result = bService.insertBoard(b);
		if(result>0) {
			int bNo = bService.selectBoardNoCheck();
			v.setBoardNo(bNo);
			int result2 = bService.insertVolunteer(v);
		}
		return "redirect:domesticList.bo";
	}
	
	@RequestMapping("test.bo")
	public String test2(@RequestParam("startTime") String st, @RequestParam("endTime") String et) {
		return "redirect:domesticList.bo";
	}
	
	@RequestMapping("regionBoardList.bo")
	public void regionBoardList(HttpServletResponse response,
								@RequestParam(value = "region", required = false) String region,
								@RequestParam(value = "page", defaultValue = "1") int currentPage) {
		int listCount = bService.getRegionListCount(region);
		PageInfo pi2 = Pagination.getPageInfo(currentPage, listCount,5);
		
		ArrayList<Board> list = bService.regionBoardList(region,pi2);
	    Map<String, Object> resultMap = new HashMap<>();
	    resultMap.put("list", list);
	    resultMap.put("pi2", pi2);
	    
		GsonBuilder gb = new GsonBuilder().setDateFormat("YYYY-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		try {
			gson.toJson(resultMap,response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

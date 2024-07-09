package com.kh.homeWork.board.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		System.out.println(list);
		
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
		
		Board b = bService.selectBoard(bId,memberNo);	//조회수 해결했는데?
		VolunteerDetail v = bService.selectVolunteerDetail(bId);
		model.addAttribute("b",b);
		model.addAttribute("v",v);
		model.addAttribute("page",page);
		
		
		return "boardDetail";
	}
	
	@RequestMapping("writeBoard.bo")
	public String writeBoard() {
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
		System.out.println(st);
		System.out.println(et);
		return "redirect:domesticList.bo";
	}
	
	
}

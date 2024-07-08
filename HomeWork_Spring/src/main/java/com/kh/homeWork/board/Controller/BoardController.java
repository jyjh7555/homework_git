package com.kh.homeWork.board.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping("domesticList.bo")
	public String selectBoardList(@RequestParam(value="page", defaultValue="1") int currentPage, Model model) {
		int listCount = bService.getListCount(1);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5);		
		ArrayList<Board> list = bService.selectBoardList(pi,1);
		//System.out.println(list);
		
		if(list !=null) {
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			return "domesticList";
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
		model.addAttribute("b",b);
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
			System.out.println(bNo);
			v.setBoardNo(bNo);
			System.out.println(v.getBoardNo());
			int result2 = bService.insertVolunteer(v);
			System.out.println("잘들어갔습니다");
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

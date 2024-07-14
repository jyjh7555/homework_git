package com.kh.homeWork.board.Controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.homeWork.board.model.exception.BoardException;
import com.kh.homeWork.board.model.service.BoardService;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.Reply;
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
		//System.out.println(list);
		
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
		
		if(v != null) {
			boolean dateCheck = LocalDate.now().isAfter(v.getEndDate().toLocalDate());
			model.addAttribute("dateCheck",dateCheck);
			v.setAddress(v.getAddress().replace(","," "));
			
		}
		model.addAttribute("v",v);
		model.addAttribute("page",page);
		
		//댓글도 넣는다.
		if(b.getBoardType()==3) {
			ArrayList<Reply> list = bService.selectReply(bId);
			for(Reply r : list) {
				r.setContent(r.getContent().replace("\n","<br>"));
				Calendar calendar = Calendar.getInstance();
		        calendar.setTime(r.getUpdateDate());

		        int year = calendar.get(Calendar.YEAR);
		        int month = calendar.get(Calendar.MONTH) + 1;
		        int day = calendar.get(Calendar.DAY_OF_MONTH);
		        int hours = calendar.get(Calendar.HOUR_OF_DAY);
		        int minutes = calendar.get(Calendar.MINUTE);
		        int seconds = calendar.get(Calendar.SECOND);
		        r.setReDate(""+year+"."+month+"."+day +" "+hours + ":" +minutes + ":" +seconds);
			}
			model.addAttribute("list",list);
		}
		
		
		return "boardDetail";
	}
	
	@RequestMapping("writeBoard.bo")
	public String writeBoard() {
		return "writeBoard";
	}
	
	@RequestMapping("testWriteBoard.bo")
	public String testWriteBoard() {
		return "testWriteBoard";
	}
	

	@RequestMapping("insertBoard.bo")
	public String insertBoard(@ModelAttribute Board b, @ModelAttribute VolunteerDetail v) {
		int result = bService.insertBoard(b);
		if(result>0 && b.getBoardType() !=3) {
			int bNo = bService.selectBoardNoCheck();
			v.setBoardNo(bNo);
			int result2 = bService.insertVolunteer(v);
		}
		return "redirect:domestic.bo";
	}
	
	@RequestMapping("editBoard.bo")
	public String editBoard(@RequestParam("bId") int bId,@RequestParam("page")int page,Model model) {
		Board b = bService.selectBoard(bId, 0);
		VolunteerDetail v = bService.selectVolunteerDetail(bId);
		String[] address = v.getAddress().split(",");
		model.addAttribute("b",b);
		model.addAttribute("v",v);
		model.addAttribute("address",address);
		model.addAttribute("page",page);
		
		return "editBoard";
	}
	
	@RequestMapping("updateBoard.bo")
	public String updateBoard(@ModelAttribute Board b, @ModelAttribute VolunteerDetail v,@RequestParam("page") int page) {
		
		int result1 = bService.updateBoard(b);
		System.out.println(result1); //잘도니ㅡㄴ거확인햇음
		int result2 = bService.updateVolunteerDetail(v);
		System.out.println(result2); //잘도니ㅡㄴ거확인햇음
		
		if(result1>0 && result2>0) {
			switch(b.getBoardType()) {
			case 1: return "redirect:domestic.bo?page="+page;
			case 2: return "redirect:global.bo?page="+page;
			case 3: return "redirect:review.bo?page="+page;
			}
		}
		throw new BoardException("게시글 수정에 실패하였습니다");
	}
	
	@RequestMapping("deleteBoard.bo")
	public String deleteBoard(@RequestParam("boardNo") int bNo,@RequestParam("boardType") int boardType,@RequestParam("page") int page) {
		int result = bService.deleteBoard(bNo);
		
		if(result>0) {
			switch(boardType) {
			case 1: return "redirect:domestic.bo?page="+page;
			case 2: return "redirect:global.bo?page="+page;
			case 3: return "redirect:review.bo?page="+page;
			}
		}
		
		throw new BoardException("게시글 삭제에 실패하였습니다");
		
		
	}
	
	
	@RequestMapping("insertReply.bo")
	@ResponseBody
	public void insertReply(@ModelAttribute Reply r,HttpServletResponse response) {
		
		int result = bService.insertReply(r);
		
		if(result>0) {
			ArrayList<Reply> rList = bService.selectReply(r.getBoardNo());
			
			for(Reply rr : rList) {
				
				rr.setContent(rr.getContent().replace("\n","<br>"));
			}
			
			
			GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy.MM.dd HH:mm:ss");
			Gson gson = gb.create();
			response.setContentType("application/json; charset=UTF-8");
			//System.out.println("여기까진 될거같은데?");
			try {
				gson.toJson(rList,response.getWriter());
			} catch (JsonIOException | IOException  e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			System.out.println("오류!!");
		}
		
		
	}
	
	@RequestMapping("updateReply.bo")
	@ResponseBody
	public void updateReply(@ModelAttribute Reply r,HttpServletResponse response) {
		int result = bService.updateReply(r);
		Reply selectR = bService.selectOneReply(r);
		
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy.MM.dd HH:mm:ss");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		alterReply(selectR);
		
		
		try {
			gson.toJson(selectR,response.getWriter());
		} catch (JsonIOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("selectOneReply.bo")
	@ResponseBody
	public void selectOneReply(@ModelAttribute Reply r,HttpServletResponse response) {
		Reply selectR = bService.selectOneReply(r);
		
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy.MM.dd HH:mm:ss");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		alterReply(selectR);
		
		try {
			gson.toJson(selectR,response.getWriter());
		} catch (JsonIOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("deleteReply.bo")
	@ResponseBody
	public String deleteReply(Reply r) {
		int result = bService.deleteReply(r);
		
		
		return result == 1 ? "success" : "fail"; 
	}
	
	public Reply alterReply(Reply r) {
		r.setContent(r.getContent().replace("\n","<br>"));
		Calendar calendar = Calendar.getInstance();
        calendar.setTime(r.getUpdateDate());

        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH) + 1;
        int day = calendar.get(Calendar.DAY_OF_MONTH);
        int hours = calendar.get(Calendar.HOUR_OF_DAY);
        int minutes = calendar.get(Calendar.MINUTE);
        int seconds = calendar.get(Calendar.SECOND);
        r.setReDate(""+year+"."+month+"."+day +" "+hours + ":" +minutes + ":" +seconds);
        
        return r;
	}
}

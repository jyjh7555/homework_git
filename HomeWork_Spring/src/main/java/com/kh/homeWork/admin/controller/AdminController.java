package com.kh.homeWork.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

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
import com.kh.homeWork.Volunteer.model.Volunteer;
import com.kh.homeWork.admin.exception.AdminException;
import com.kh.homeWork.admin.model.service.AdminService;
import com.kh.homeWork.board.model.exception.BoardException;
import com.kh.homeWork.board.model.vo.Board;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.board.model.vo.Reply;
import com.kh.homeWork.board.model.vo.VolunteerDetail;
import com.kh.homeWork.common.Pagination;
import com.kh.homeWork.member.model.exception.MemberException;
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
		
		ArrayList<Member> list = aService.adminMemberList(pi);
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
	    result.put("member", list);
	    result.put("maxPage", pi.getMaxPage()); 
	    result.put("currentPage", pi.getCurrentPage());
	    result.put("currentPage", pi.getCurrentPage());
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
		System.out.println(pi);
		
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
	    result.put("pay", payList);
	    result.put("maxPage", pi.getMaxPage()); 
	    System.out.println(pi.getMaxPage());
	    
		try {
			gson.toJson(result, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("admin{boardType}.ad")
	public String adminBoardList(@PathVariable String boardType, @RequestParam(value="page", defaultValue="1") int currentPage, Model model) {
		
		int boardTypeNum;
	    String viewName;
	    
	    switch (boardType) {
        case "domestic":
            boardTypeNum = 1;
            viewName = "adminDomesticBoard";
            break;
        case "global":
        	boardTypeNum = 2;
            viewName = "adminGlobalBoard";
            break;
        case "review":
        	boardTypeNum = 3;
            viewName = "adminReviewBoard";
            break;
        default:
            return "../errorPage";
    }
		
		int listCount = aService.getListCountBoard(boardTypeNum);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 10);		
		ArrayList<Board> list = aService.selectBoardList(pi,boardTypeNum);
		
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
			return viewName;
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
		
		//댓글
		if(b.getBoardType()==3) {
			ArrayList<Reply> list = aService.selectReply(bId);
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
		
		return "adminBoardDetail";
	}
	
	@RequestMapping("adminWriteBoard.ad")
	public String writeBoard() {
		return "adminWriteBoard";
	}
	
	@RequestMapping("adminInsertBoard.ad")
	public String insertBoard(@ModelAttribute Board b, @ModelAttribute VolunteerDetail v) {
		int result = aService.adminInsertBoard(b);
		if(result>0 && b.getBoardType() !=3) {
			int bNo = aService.adminSelectBoardNoCheck();
			v.setBoardNo(bNo);
			int result2 = aService.adminInsertVolunteer(v);
		}
		return "redirect:admindomestic.ad";
	}

	
	@RequestMapping("adminBoardDelete.ad")
	public String adminDeleteBoard(@RequestParam("boardNo") int bNo, @RequestParam("boardType") int boardType, @RequestParam("page") int page) {
		int result = aService.adminDeleteBoard(bNo);
		if(result > 0) {				
			switch(boardType) {
			case 1: return "redirect:admindomestic.ad";
			case 2: return "redirect:adminglobal.ad";
			case 3: return "redirect:adminreview.ad";
			}
		}
			throw new AdminException("게시글 삭제에 실패하였습니다.");
	}
	
	@RequestMapping("/adminBoardEdit.ad")
	public String editBoard(@RequestParam("boardNo") int bId,@RequestParam("page")int page,Model model) {
		Board b = aService.selectBoard(bId, 0);
		VolunteerDetail v = aService.adminSlectVolunteerDetail(bId);
		String[] address = v.getAddress().split(",");
		model.addAttribute("b",b);
		model.addAttribute("v",v);
		model.addAttribute("address",address);
		model.addAttribute("page",page);
		
		return "adminEditBoard";
	}
	
	@RequestMapping("adminUpdateBoard.ad")
	public String updateBoard(@ModelAttribute Board b, @ModelAttribute VolunteerDetail v,@RequestParam("page") int page) {
		int result1 = aService.adminUpdateBoard(b);
		System.out.println(result1); 
		int result2 = aService.adminUpdateVolunteerDetail(v);
		System.out.println(result2); 
		
		if(result1>0 && result2>0) {
			switch(b.getBoardType()) {
			case 1: return "redirect:admindomestic.ad?page="+page;
			case 2: return "redirect:adminglobal.ad?page="+page;
			case 3: return "redirect:adminreview.ad?page="+page;
			}
		}
		throw new AdminException("게시글 수정에 실패하였습니다");
	}
	
	@RequestMapping("adminInsertReply.ad")
	@ResponseBody
	public void insertReply(@ModelAttribute Reply r,HttpServletResponse response) {
		
		int result = aService.adminInsertReply(r);
		
		if(result>0) {
			ArrayList<Reply> rList = aService.selectReply(r.getBoardNo());
			
			for(Reply rp : rList) {
				
				rp.setContent(rp.getContent().replace("\n","<br>"));
			}
			
			
			GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy.MM.dd HH:mm:ss");
			Gson gson = gb.create();
			response.setContentType("application/json; charset=UTF-8");
			try {
				gson.toJson(rList,response.getWriter());
			} catch (JsonIOException | IOException  e) {
				e.printStackTrace();
			}
		}else {
			System.out.println("error");
		}
		
		
	}
	
	@RequestMapping("adminDeleteReply.ad")
	@ResponseBody
	public String deleteReply(Reply r) {
		int result = aService.adminDeleteReply(r);
		
		
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
	
	@RequestMapping("adminSelectMember.ad")
	public String adminSelectMember(@RequestParam("memberNo") int memberNo,
									HttpSession session) {
	
		Member m = aService.adminSelectMember(memberNo);	
		ArrayList<Pay> pay = aService.adminSelectPay(memberNo);
		
		session.setAttribute("m", m);
		session.setAttribute("pay", pay);
		
		
		return "adminMemberDetail";
	}
	
	@RequestMapping("adminUpdateMember.ad")
	public String adminUpdateMember(@ModelAttribute Member m, Model model) {
		if (m.getStatus() == null || m.getStatus().isEmpty()) {
	        m.setStatus("N");
	    }
	    if (m.getIsAdmin() == null || m.getIsAdmin().isEmpty()) {
	        m.setIsAdmin("N");
	    }
		int result = aService.adminUpdateMember(m);
		if(result > 0) {
			return "redirect:adminSelectMember.ad?memberNo=" + m.getMemberNo();
		} else {
			throw new AdminException("정보수정을 실패했습니다.");
		}
	}
	
	@RequestMapping("adminStatistics.ad")
	@ResponseBody
	public void adminPayList(HttpServletResponse response ) {
		
		int totalMember = aService.totalMember();
		int activeMember = aService.activeMember();
		int inactiveMember = totalMember-activeMember;
		int totalBoard = aService.totalBoard();
		int domesticAmount = aService.domesticAmount();
		int globalAmount = aService.globalAmount();
		int totalAmount = globalAmount + domesticAmount; 
		int volunteerApplicant = aService.volunteerApplicant();
		
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
	    result.put("totalMember", totalMember);
	    result.put("activeMember", activeMember);
	    result.put("inactiveMember", inactiveMember);
	    result.put("totalBoard", totalBoard);
	    result.put("totalAmount", totalAmount);
	    result.put("domesticAmount", domesticAmount);
	    result.put("globalAmount", globalAmount);
	    result.put("volunteerApplicant", volunteerApplicant);
	    
		try {
			gson.toJson(result, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/adminVolunteerList.ad")
	@ResponseBody
	public void adminVolunteerList(@RequestParam(value="page", defaultValue = "1") int page,
								@RequestParam(value="size", defaultValue = "10") int size,
								HttpServletResponse response
							    ) {
	    
		int listCount = aService.getListCountVolunteer();
		System.out.println(listCount);
		PageInfo pi = Pagination.getPageInfo(page, listCount, 5);
		
		ArrayList<Volunteer> list = aService.adminVolunteerList(pi);
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		HashMap<String, Object> result = new HashMap<String, Object>();
	    result.put("volunteer", list);
	    result.put("maxPage", pi.getMaxPage()); 
	    result.put("currentPage", pi.getCurrentPage());
	    result.put("currentPage", pi.getCurrentPage());
		try {
			gson.toJson(result, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	@RequestMapping("/updateVolunteerStatus.ad")
	@ResponseBody
	public void adminVolunteerUpdate(
									   @RequestParam("volunteerNo") int volunteerNo, 
									   @RequestParam("memberNo") int memberNo,
            						   @RequestParam("status") String status,
            						   HttpServletResponse response
            						   ) {
		HashMap<String, Object> v = new HashMap<String, Object>();
		v.put("volunteerNo", volunteerNo);
		v.put("memberNo", memberNo);
		v.put("status", status);
		int result = aService.adminVolunteerUpdate(v);
		
		
		GsonBuilder gb = new GsonBuilder().setDateFormat("yyyy-MM-dd");
		Gson gson = gb.create();
		response.setContentType("application/json; charset=UTF-8");
		
		HashMap<String, Object> resultStatus = new HashMap<String, Object>();
		resultStatus.put("result", result == 1? "success" : "fail");
		resultStatus.put("status", status);
		try {
			gson.toJson(resultStatus, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
}

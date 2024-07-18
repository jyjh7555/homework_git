package com.kh.homeWork.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.homeWork.board.model.vo.PageInfo;
import com.kh.homeWork.common.Pagination;
import com.kh.homeWork.member.model.exception.MemberException;
import com.kh.homeWork.Volunteer.model.Volunteer;
import com.kh.homeWork.Volunteer.service.VolunteerService;
import com.kh.homeWork.member.model.service.MemberService;
import com.kh.homeWork.member.model.vo.Member;
import com.kh.homeWork.surpport.model.vo.Pay;

@Controller
public class MemberController {
	
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;
	
	
	@Autowired
	private MemberService mService;
	@Autowired
	private VolunteerService vService;
	
	@RequestMapping("loginView.me")
	public String loginView(@ModelAttribute Member m) {
		return "login";
	}
	
	
	@RequestMapping("loginCheck.me")
	public String loginCheck(Member m, Model model, HttpSession session) {
		
		Member loginUser = mService.loginCheck(m);
		System.out.println(loginUser);
		
		if(loginUser !=null) {
			if(bcrypt.matches(m.getMemberPwd(), loginUser.getMemberPwd())) {
				session.setAttribute("loginUser", loginUser);			
				return "redirect:home.do";				
			}else {
				throw new MemberException("로그인을 실패했습니다.");
			
			}
		}
		throw new MemberException("아이디 또는 비밀번호가 틀렸습니다");
	}
	
	
	@RequestMapping("admin.me")
	public String adminPage() {
		return "../admin/admin";

	}
	
	@RequestMapping("logout.me")
	public String logout(HttpServletRequest request) {
	    HttpSession session = request.getSession(false);
	    if (session != null) {
	        session.invalidate(); 
	    }
	    return "redirect:home.do";
	}
	
	@RequestMapping("signUp.me")
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping("myPage.me")
	public String myPage(HttpSession session, Model model) {
	    Member loginUser = (Member) session.getAttribute("loginUser");
	    if (loginUser != null) {
	        List<Volunteer> recentVolunteers = vService.getRecentVolunteers(loginUser.getMemberNo());
	        
	        model.addAttribute("recentVolunteers", recentVolunteers);
	        model.addAttribute("loginUser",loginUser);
	    }
	    return "myPage";
	}
	
	@RequestMapping("insertMember.me")
	public String insertMember(@ModelAttribute Member m,
							  @RequestParam(value="emailId",defaultValue="null") String emailId,
							  @RequestParam("emailDomain") String emailDomain,
							  @RequestParam("phone") String phone) {
		String email = null;
		if(!emailId.equals("")) {
			email = emailId + "@" + emailDomain;
		}
		m.setEmail(email);
		m.setPhone(phone.replace(",", "-"));
		m.setMemberPwd(bcrypt.encode(m.getMemberPwd()));	//�븫�샇�솕 �떆�옉
		int result = mService.insertMember(m);
		
		return "redirect:home.do";
	}
	@RequestMapping("findId.me")
	public String findId() {
		return "findId";
	}
	
	@RequestMapping("updateMemberPage.me")
	public String updateMember() {
		
		return "edit";
	}
	
	@RequestMapping("updateMember.me")
	public String updateMember(@ModelAttribute Member m,@RequestParam("id") String id, @RequestParam("emailId") String emailId, @RequestParam("emailDomain") String emailDomain,@RequestParam("phone") String phone,Model model) {
		String email = null;
		if(!emailId.trim().equals("")) {
			email = emailId + "@" + emailDomain;
		}
		m.setEmail(email);
		m.setPhone(phone.replace(",", "-"));
		m.setMemberId(id);

		int result = mService.updateMember(m);
		
		if(result > 0) {
			model.addAttribute("loginUser",mService.loginCheck(m)); // session에 있는 정보도 수정
			return "redirect:myPage.me";
		} else {
			throw new MemberException("정보수정을 실패했습니다.");
		}
	}
	@RequestMapping("updatePwdPage.me")
	public String updatePwdPage() {
		return "updatePwd";
	}
	
	@RequestMapping("updatePwd.me")
	public String updatePwd(String currentPwd, String newPwd, Model model,HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		 if (m == null) {
		        throw new MemberException("로그인 정보를 찾을 수 없습니다.");
		    }
		System.out.println(currentPwd);
		System.out.println(newPwd);
		if(bcrypt.matches(currentPwd, m.getMemberPwd())) {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("id", m.getMemberId());
			map.put("newPwd",bcrypt.encode(newPwd));
			
			int result = mService.updatePassword(map);
			System.out.println(result);
			if(result >0) {
				model.addAttribute("loginUser",mService.loginCheck(m));
				return "redirect:index.jsp";
			}else {
				throw new MemberException("비밀번호 수정을 실패했습니다.");
			}
		} else {
			throw new MemberException("비밀번호 수정을 실패하였습니다.");
		}
	}
	
	
	
	
	
	
	
	@RequestMapping("selectId.me")
	public String findId(@RequestParam("findName") String findName,
						 @RequestParam("findEmail") String findEmail,
						 @RequestParam("findPhone") String findPhone,
						 Member m, Model model) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("findName", findName);
		map.put("findEmail", findEmail);
		map.put("findPhone", findPhone);
		String findId = mService.selectId(map);
		model.addAttribute("findName", findName);
		model.addAttribute("findId", findId);
		model.addAttribute("type", 1);
		return "findResult";
	}
	
	@RequestMapping("findPwd.me")
	public String findPwd() {
		return "findPwd";
	}
	
	private final char[] randomString = new char[]{
		    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
		    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
		    'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
		};

	public String RandomPassword(int size) {
	    StringBuilder sb = new StringBuilder();
	    Random rnd = new Random(new Date().getTime());
	    int len = randomString.length;
	    
	    for (int i = 0; i < size; i++) {
	        sb.append(randomString[rnd.nextInt(len)]);
	    }

	    return sb.toString();
	}
	
	@RequestMapping("selectPwd.me")
	public String findId(@RequestParam("findId") String findId,
						 @RequestParam("findName") String findName,
						 @RequestParam("findEmail") String findEmail,
						 @RequestParam("findPhone") String findPhone,
						 Model model) {
		ArrayList<Member> memberList = mService.findMember();
		
		Member foundMember = null;
		for (Member member : memberList) {
	        if (member.getMemberId().equals(findId) && member.getMemberName().equals(findName) && member.getEmail().equals(findEmail) && member.getPhone().equals(findPhone)) {
	            foundMember = member;
	            break;
	        }
	    }
		
		if (foundMember != null) {
	        HashMap<String, String> map = new HashMap<>();
	        map.put("findId", findId);
	        map.put("findName", findName);
	        map.put("findEmail", findEmail);
	        map.put("findPhone", findPhone);

	        String temp = RandomPassword(10);    // 임시 비밀번호 생성
	        map.put("tempPwd", bcrypt.encode(temp));
	        int result = mService.updateTempPwd(map); // 현재 비밀번호를 임시 비밀번호로 변경
	        
	        model.addAttribute("findName", findName);
	        model.addAttribute("tempPwd", temp);
	        model.addAttribute("type", 2);
	        return "findResult"; 
	        
		} else {
			throw new MemberException("입력하신 정보가 일치하지않습니다.");
		}
		
		
		
	}
	
	
	
	@RequestMapping("checkMemberId.me")
	@ResponseBody
	public String checkMemberId(@RequestParam("id") String id) {
		int result = mService.checkMemberId(id);
		System.out.println(result);
		if(result>0) {	//존재하면 중복
			return "yes";
		}else {			//0이면 중복아님
			return "no";
		}
		
	}

	@RequestMapping("checkMemberNickName.me")
	@ResponseBody
	public String checkMemberNickName(@RequestParam("nickName") String nickName) {
		int result = mService.checkMemberNickName(nickName);
		System.out.println(result);
		if(result>0) {	//존재하면 중복
			return "yes";
		}else {			//0이면 중복아님
			return "no";
		}

	}

	
	
}

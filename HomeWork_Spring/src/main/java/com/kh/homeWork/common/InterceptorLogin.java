package com.kh.homeWork.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;

import com.kh.homeWork.member.model.vo.Member;

public class InterceptorLogin implements HandlerInterceptor{
	private Logger logger = LoggerFactory.getLogger(InterceptorLogin.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("bo구간에 잘들어와진다~");
		logger.info("==========================");
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(loginUser ==null) {
			String url = request.getRequestURI();
			String msg = null;
			System.out.println(url);
			if(url.contains("selectBoard.bo")) {
				msg = "로그인 이후 확인 가능합니다!";
			}else {
				msg = "로그인 세션이 만료되었습니다";
			}
			
			session.setAttribute("msg", msg);
			response.sendRedirect("loginView.me");
			return false;
		}
		
		
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}
	
}

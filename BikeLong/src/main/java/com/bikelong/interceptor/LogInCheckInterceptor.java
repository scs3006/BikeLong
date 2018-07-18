package com.bikelong.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class LogInCheckInterceptor 
	implements HandlerInterceptor {//interceptor가 되기 위해 필요한 구현

	@Override //controller 호출 전
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 페이지 이동 시 로그인 여부 확인하는 코드
//		Member member = 
//				(Member)request.getSession().getAttribute("loginuser");
//		String url = request.getRequestURI();
//		boolean redirect = false;
//		if (url.contains("/board/") && member == null) {
//			redirect = true;
//		}
//		if (url.contains("/list.action") || url.contains("/detail.action") || url.contains("/register.action")) {
//			redirect = false;
//		}
//		if (redirect) {
//			response.sendRedirect("/alone/account/login.action");
//		}
//		return !redirect;//false를 반환하면 요청 처리 중단
		return true;
	}	
	@Override //controller 호출 후
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}
	@Override // 요청 처리가 끝난 후
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
	
}

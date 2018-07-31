package com.bikelong.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.bikelong.vo.Member;


public class LogInCheckInterceptor 
	implements HandlerInterceptor {//interceptor가 되기 위해 필요한 구현

	@Override //controller 호출 전
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// 페이지 이동 시 로그인 여부 확인하는 코드
		Member member = (Member)request.getSession().getAttribute("loginuser");
		String url = request.getRequestURI();
		boolean redirect = false;
		
		if(member == null) {
			if (url.contains("/route/") || url.contains("/trailpathboard/") || url.contains("/noticeboard/") || url.contains("/suggestions/") ||
					url.contains("/mypage/") || url.contains("/goal/")) {
				redirect = true;
			}
		}else if(!(member.getId().equals("manager"))){
			if (url.contains("/noticeboard/write.action") || url.contains("/trailpathboard/write.action") || 
					url.contains("/noticeboard/update.action") || url.contains("/trailpathboard/update.action")) {
				response.sendRedirect("/bikelong/");
			}
		}
		
		if (url.contains("/list.action") || url.contains("/detail.action") || url.contains("/sharingboardlist.action") || url.contains("/sharingboarddetail.action") ||
				url.contains("/route/gpsfind.action") || url.contains("/mypage/mactivity.action")) {
			redirect = false;
		}
		
		if (redirect) {
			response.sendRedirect("/bikelong/account/signin.action");
		}
		return !redirect;//false를 반환하면 요청 처리 중단
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

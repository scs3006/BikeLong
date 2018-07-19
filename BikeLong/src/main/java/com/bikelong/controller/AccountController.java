package com.bikelong.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bikelong.service.AccountService;
import com.bikelong.vo.Member;

@Controller
@RequestMapping(value = "/account")
public class AccountController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	
	@GetMapping(value = "/signin.action")
	public String getSignIn() {
		return "sign-in";
	}

	@PostMapping(value = "/signin.action")
	public String postSignIn(String id, String password, HttpSession session) {
		
		// 로그인 가능한지 확인 (데이터베이스에서 확인 - Service 객체에 요청)
		Member member = accountService.login(id, password);

		if (member != null) {// 데이터베이스에서 데이터가 조회된 경우
			System.out.println("성공");
			// 로그인 가능한 사용자라면 로그인 처리 (세션이나 쿠키에 데이터 저장)
			session.setAttribute("loginuser", member);// session에 Member 객체 저장
			session.setAttribute("id", member.getId());
		} else {
			System.out.println("실패");
			return "redirect:/account/signin.action"; // 로그인 화면으로 이동
		}

		return "redirect:/";

	}
	
	@GetMapping(value = "/signup.action")
	public String getSignUp() {
		return "sign-up";
	}
	
	@PostMapping(value = "/signup.action")
	public String postSingUp(@RequestParam(value = "basicWeight", defaultValue = "65") int weight, Member member) {
		member.setWeight(weight);
		try {
			accountService.signUpMember(member);
		} catch (Exception ex) { // 등록 실패한 경우
			return "redirect:signup.action?registerfail=" + member.getId();
		}
		return "redirect:signin.action"; 
	}
	
	@GetMapping(value = "/logout.action")
	public String logout(HttpSession session) {
		session.removeAttribute("loginuser");
		return "redirect:/index.action";
	}
	
}








package com.bikelong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping(value = "mypage")
public class MypageController {
	
	@GetMapping(value = "mypage.action")
	public String getMypage() {
		return "mypage/mypage";
	}
	
	@GetMapping(value = "activity.action")
	public String getActivity() {
		return "mypage/myactivity";
	}
}
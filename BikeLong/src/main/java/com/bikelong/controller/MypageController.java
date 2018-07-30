package com.bikelong.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bikelong.service.MypageService;
import com.bikelong.vo.History;
@Controller
@RequestMapping(value = "mypage")
public class MypageController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("mypageService")
	private MypageService mypageService;
	
	@GetMapping(value = "mypage.action")
	public String getMypage() {
		return "mypage/mypage";
	}
	
	@GetMapping(value = "activity.action")
	public String getActivity(@RequestParam(value = "requestType", defaultValue = "0") int requestType, HttpSession session,Model model) {
		
		HashMap<String, Object> params = new HashMap<>();
		List<History> historyList = null;
		SimpleDateFormat startDateFormat = new SimpleDateFormat ( "yyyy-MM-dd 00:00:00");
		SimpleDateFormat endDateFormat = new SimpleDateFormat ( "yyyy-MM-dd 23:59:59");
		String endToday = endDateFormat.format (new Date());
		String startDay = "";
		
		switch (requestType) {
			case 0:
				
				params.put("requestType", requestType);
				params.put("id", (String) session.getAttribute("id"));
				historyList = mypageService.getTotalActivity(params);
				
				break;
			case 1:
				startDay = startDateFormat.format (new Date());
				
				params.put("requestType", requestType);
				params.put("id", (String) session.getAttribute("id"));
				params.put("startDay", startDay);
				params.put("endDay", endToday);
				historyList = mypageService.getTotalActivity(params);
				
				break;
			case 2:
				Calendar week = Calendar.getInstance();
				week.add(Calendar.DATE , -7);
				startDay = startDateFormat.format (week.getTime());
				System.out.println(startDay);
				
				params.put("requestType", requestType);
				params.put("id", (String) session.getAttribute("id"));
				params.put("startDay", startDay);
				params.put("endDay", endToday);
				historyList = mypageService.getTotalActivity(params);
				
				break;
			case 3:
				Calendar month = Calendar.getInstance();
				month.add(Calendar.MONTH , -1);
				startDay = startDateFormat.format (month.getTime());
				System.out.println(startDay);
				
				params.put("requestType", requestType);
				params.put("id", (String) session.getAttribute("id"));
				params.put("startDay", startDay);
				params.put("endDay", endToday);
				historyList = mypageService.getTotalActivity(params);
				
				break;
		}
		
		model.addAttribute("requestType", requestType);
		model.addAttribute("historyList", historyList);
		return "mypage/myactivity";
	}
	
	@GetMapping(value = "changePassword.action")
	public String getchangePassword() {
		return "mypage/changePassword";
	}
}
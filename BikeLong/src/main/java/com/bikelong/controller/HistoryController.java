package com.bikelong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bikelong.service.HistoryService;

@Controller
@RequestMapping(value = "/history")
public class HistoryController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("historyService")
	private HistoryService historyService;
	
}








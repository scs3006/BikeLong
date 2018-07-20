package com.bikelong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bikelong.service.GoalService;

@Controller
@RequestMapping(value = "/goal")
public class GoalController {
	
	@Autowired
	@Qualifier("goalService")
	private GoalService goalService;
	
	@GetMapping(value = "/elements2.action")
	public String elementsView() {
		
		return "elements2";
	}

}








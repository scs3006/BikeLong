package com.bikelong.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bikelong.vo.Goal;

@Controller
@RequestMapping(value = "/service")
public class ServiceController {
	
	@GetMapping(value = "/service.action")
	public String ServiceView() {
	
		return "service/service";
	}

}








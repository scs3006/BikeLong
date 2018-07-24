package com.bikelong.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bikelong.service.GoalService;
import com.bikelong.vo.Goal;

@Controller
@RequestMapping(value = "/weather")
public class WeatherController {

	@GetMapping(value = "/info.action")
	public String weather() {
		
		return "weather/coming-soon";
	}
	
	
	

}








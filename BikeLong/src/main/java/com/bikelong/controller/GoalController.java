package com.bikelong.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.GoalService;
import com.bikelong.vo.Goal;

@Controller
@RequestMapping(value = "/goal")
public class GoalController {
	
	@Autowired
	@Qualifier("goalService")
	private GoalService goalService;
	
	@GetMapping(value = "/goal.action")
	public String goalList(Model model) {
		
		List<Goal> goals = goalService.findGoal();
		model.addAttribute("goals",goals);
		
		return "goal/goal";
	}
	
	@GetMapping(value = "/mobile_goal.action")
	@ResponseBody
	public List<Goal> mobile_goalList() {
		
		List<Goal> goals = goalService.findGoal();
		
		return goals;
	}
	
	
	

}








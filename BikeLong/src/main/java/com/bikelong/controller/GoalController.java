package com.bikelong.controller;



import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.GoalService;
import com.bikelong.vo.Goal;
import com.bikelong.vo.History;
import com.bikelong.vo.Member;

@Controller
@RequestMapping(value = "/goal")
public class GoalController {
	
	@Autowired
	@Qualifier("goalService")
	private GoalService goalService;

	@GetMapping(value = "/goal.action")
	public String goalList(HttpSession session, Model model) {
	
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String today = format.format(new Date());
		System.out.println(today);
		
		Goal goal = goalService.findGoal((String)session.getAttribute("id"),today);

		if(goal != null) {
			if(goal.getStatus() == 0) {
				model.addAttribute("flag", true);
				model.addAttribute("goalAmount", goal.getGoalAmount());
				model.addAttribute("goalPercent", goal.getPercent());
				model.addAttribute("status",goal.getStatus());
			}else {
				model.addAttribute("flag", false);
				model.addAttribute("goalAmount",0);
				model.addAttribute("goalPercent", 0);
				model.addAttribute("status",1);
			}
			model.addAttribute("goal",goal);
		}else {
			model.addAttribute("flag", false);
			model.addAttribute("goalAmount",0);
			model.addAttribute("goalPercent", 0);
			model.addAttribute("status",0);
		}
		
		return "goal/goal";
	}
	

	@RequestMapping(value = "startGoal.action")
	public String startGoal(Goal goal,HttpSession session,Model model) {
		
		
		goal.setId((String)session.getAttribute("id"));
		
		goalService.startGoal(goal);
		
		model.addAttribute("flag", true);
		model.addAttribute("goalAmount", goal.getGoalAmount());
		model.addAttribute("goalPercent", 0);
		
		model.addAttribute("goal", goal);
		
		return "redirect:goal.action";
		
	}
	
	@RequestMapping(value="statusGoal.action")
	public String statusGoal(Goal goal, Model model,String id) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String today = format.format(new Date());
		System.out.println(today);
	
		goal = goalService.findGoal(id,today);
		
		List<History> his = goalService.findHistory(goal);
		
		int distance=0;
		int statusNow=2;
		
		for(History distanceList : his) {
			distance += distanceList.getDistance();
		}
		
		//System.out.println(distance);
		statusNow =(int)((double)distance/(goal.getGoalAmount()*1000) * 100);
		//System.out.println(his);
		System.out.println(goal.getGoalAmount());
		//System.out.println(statusNow);
		
		goal.setPercent(statusNow);
		
		model.addAttribute("flag", true);
		model.addAttribute("goal",goal);
		model.addAttribute("goalAmount",goal.getGoalAmount());
		model.addAttribute("goalPercent",goal.getPercent());
		model.addAttribute("status",goal.getStatus());

	
		return "goal/goal";
		
	}
	
	@RequestMapping(value="savePoint.action")
	public String savePoint(@RequestParam(value="point",defaultValue="0") int point,
			Goal goal,HttpSession session,Member member,Model model) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String today = format.format(new Date());
		
		goal = goalService.findGoal((String)session.getAttribute("id"),today);
		goal.setId((String)session.getAttribute("id"));
		
		member = goalService.findPoint(goal);
		int mpoint = member.getPoint()+point;
		
		member.setPoint(mpoint);
		member.setId((String)session.getAttribute("id"));
		
		String id = (String)session.getAttribute("id");
		String goalDate = format.format(goal.getDate());
		
		System.out.println(goalDate);
		
		if(( today.equals(goalDate)) && (goal.getStatus() == 0) ) {
			goalService.givePoint(member);
			goalService.updateStatus(id,today);
			//model.addAttribute("status", 0);
		}
		//System.out.println(goal.getStatus());
		//System.out.println(member.getPoint());
	
		return "redirect:goal.action";
		
	}
	
	
	/*@GetMapping(value = "/mobile_goal.action")
	@ResponseBody
	public List<Goal> mobile_goalList() {
		
		//List<Goal> goals = goalService.findGoal();
		Goal goal = goalService.findGoal((String)session.getAttribute("id"),today);
		
		return goals;
	}*/
	
	
	

}








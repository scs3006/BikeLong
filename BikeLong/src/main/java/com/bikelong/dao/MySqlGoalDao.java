package com.bikelong.dao;

import java.util.HashMap;
import java.util.List;

import com.bikelong.mapper.GoalMapper;
import com.bikelong.vo.Goal;
import com.bikelong.vo.History;
import com.bikelong.vo.Member;


public class MySqlGoalDao implements GoalDao {
	
	private GoalMapper goalMapper;
	public void setGoalMapper(GoalMapper goalMapper) {
		this.goalMapper = goalMapper;
	}

	@Override
	public void insertGoal(Goal goal) {
		goalMapper.insertGoal(goal);
		
	}

	@Override
	public Goal selectStatus(String id,String today) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("id", id);
		params.put("today", today);
		return goalMapper.selectStatus(params);
	}

	@Override
	public List<History> selectHistory(Goal goal) {
		List<History> his = goalMapper.selectHistory(goal); 
		return his;
	}

	@Override
	public Member selectPoint(Goal goal) {
		
		return goalMapper.selectPoint(goal);
	}

	@Override
	public void insertPoint(Member member) {
		goalMapper.insertPoint(member);
		
	}

	@Override
	public void updateStatus(String id, String today) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("id", id);
		params.put("today", today);
		goalMapper.updateStatus(params);
		
	}
	
	
	

	
}

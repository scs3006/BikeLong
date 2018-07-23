package com.bikelong.dao;

import java.util.List;

import com.bikelong.mapper.GoalMapper;
import com.bikelong.vo.Goal;


public class MySqlGoalDao implements GoalDao {
	
	private GoalMapper goalMapper;
	public void setGoalMapper(GoalMapper goalMapper) {
		this.goalMapper = goalMapper;
	}
	@Override
	public List<Goal> selectGoalList() {
		
		return goalMapper.selectGoalList();
	}
	
	
	

	
}

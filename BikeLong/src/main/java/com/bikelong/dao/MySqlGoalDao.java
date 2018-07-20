package com.bikelong.dao;

import com.bikelong.mapper.GoalMapper;


public class MySqlGoalDao implements GoalDao {
	
	private GoalMapper goalMapper;
	public void setGoalMapper(GoalMapper goalMapper) {
		this.goalMapper = goalMapper;
	}
	
	
	

	
}

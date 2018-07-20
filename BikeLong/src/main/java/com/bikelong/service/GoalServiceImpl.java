package com.bikelong.service;

import com.bikelong.dao.GoalDao;

public class GoalServiceImpl implements GoalService{
	
	private GoalDao goalDao;
	
	public void setGoalDao(GoalDao goalDao) {
		this.goalDao = goalDao;
	}

}

package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.GoalDao;
import com.bikelong.vo.Goal;

public class GoalServiceImpl implements GoalService{
	
	private GoalDao goalDao;
	
	public void setGoalDao(GoalDao goalDao) {
		this.goalDao = goalDao;
	}

	@Override
	public List<Goal> findGoal() {
		// TODO Auto-generated method stub
		List<Goal> goals = goalDao.selectGoalList();
		
		return goals;
	}

}

package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.GoalDao;
import com.bikelong.vo.Goal;
import com.bikelong.vo.History;
import com.bikelong.vo.Member;

public class GoalServiceImpl implements GoalService{
	
	private GoalDao goalDao;
	
	public void setGoalDao(GoalDao goalDao) {
		this.goalDao = goalDao;
	}

	@Override
	public void startGoal(Goal goal) {
		
		goalDao.insertGoal(goal);
		
	}

	@Override
	public Goal findGoal(String id, String today) {
		
		
		return goalDao.selectStatus(id,today);
	}

	@Override
	public List<History> findHistory(Goal goal) {
		List<History> his = goalDao.selectHistory(goal); 
		return his;
	
	}

	@Override
	public Member findPoint(Goal goal) {
		
		return goalDao.selectPoint(goal);
	}

	@Override
	public void givePoint(Member member) {
		
		goalDao.insertPoint(member);
	}

	@Override
	public void updateStatus(String id, String today) {
		goalDao.updateStatus(id,today);
		
	}


}

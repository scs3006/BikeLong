package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Goal;
import com.bikelong.vo.History;
import com.bikelong.vo.Member;

public interface GoalDao {



	void insertGoal(Goal goal);

	Goal selectStatus(String id, String today);

	List<History> selectHistory(Goal goal);

	Member selectPoint(Goal goal);

	void insertPoint(Member member);

	void updateStatus(String id, String today);


}
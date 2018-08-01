package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Goal;
import com.bikelong.vo.History;
import com.bikelong.vo.Member;

public interface GoalService {

	void startGoal(Goal goal);

	Goal findGoal(String id, String today);

	List<History> findHistory(Goal goal);

	Member findPoint(Goal goal);

	void givePoint(Member member);

	void updateStatus(String id, String today);

}
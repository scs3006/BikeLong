package com.bikelong.mapper;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.Goal;
import com.bikelong.vo.History;
import com.bikelong.vo.Member;

public interface GoalMapper {

	void insertGoal(Goal goal);

	Goal selectStatus(HashMap<String, Object> params);

	List<History> selectHistory(Goal goal);

	Member selectPoint(Goal goal);

	void insertPoint(Member member);

	void updateStatus(HashMap<String, Object> params);

}

package com.bikelong.dao;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.History;

public interface MypageDao {

	List<History> selectTotalActivity(HashMap<String, Object> params);

}
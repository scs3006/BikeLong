package com.bikelong.mapper;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.History;

public interface MypageMapper {
	
	List<History> selectTotalActivity(HashMap<String, Object> params);

}

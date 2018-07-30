package com.bikelong.service;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.History;

public interface MypageService {

	List<History> getTotalActivity(HashMap<String, Object> params);

}
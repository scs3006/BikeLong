package com.bikelong.mapper;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.Environment;

public interface EnvironmentMapper {

	List<Environment> selectEnvironmentListByRentalShopNo(HashMap<String, Object> params);

	void insertEnvironmentData(Environment environment);
	Environment selectEnvironmentByRentalShopNo(HashMap<String, Object> params);
	

}

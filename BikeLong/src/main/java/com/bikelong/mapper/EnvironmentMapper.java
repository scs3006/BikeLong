package com.bikelong.mapper;

import java.util.List;

import com.bikelong.vo.Environment;

public interface EnvironmentMapper {

	List<Environment> selectEnvironmentListByRentalShopNo(int rentalshopNo);

	void insertenvironmentdata(int t, int h, float dustDensity);
	

}

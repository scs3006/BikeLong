package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Environment;

public interface EnvironmentDao {

	List<Environment> selectEnvironmentListByRentalShopNo(int rentalshopNo);

	void insertEnvironmentData(Environment environment);


	
}
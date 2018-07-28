package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Environment;

public interface EnvironmentDao {

	List<Environment> selectEnvironmentListByRentalShopNo(int rentalshopNo, String start, String end);

	void insertEnvironmentData(Environment environment);
	Environment selectEnvironmentByRentalShopNo(int rentalshopNo, String start, String end);


	
}
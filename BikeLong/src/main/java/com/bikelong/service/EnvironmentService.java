package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Environment;

public interface EnvironmentService {

	List<Environment> getEnvironmentListByRentalShopNo(int rentalshopNo, String start, String end);

	void environmentDataIn(Environment environment);
	Environment getEnvironmentByRentalShopNo(int rentalshopNo, String start, String end);


}
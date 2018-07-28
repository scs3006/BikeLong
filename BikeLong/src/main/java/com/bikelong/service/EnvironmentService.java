package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Environment;

public interface EnvironmentService {

	List<Environment> getEnvironmentListByRentalShopNo(int rentalshopNo);

	void environmentDataIn(Environment environment);


}
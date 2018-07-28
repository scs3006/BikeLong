package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.EnvironmentDao;
import com.bikelong.vo.Environment;

public class EnvironmentServiceImpl implements EnvironmentService {

	private EnvironmentDao environmentDao;
	public void setEnvironmentDao(EnvironmentDao environmentDao) {
		this.environmentDao = environmentDao;
	}
	@Override
	public List<Environment> getEnvironmentListByRentalShopNo(int rentalshopNo) {
		return environmentDao.selectEnvironmentListByRentalShopNo(rentalshopNo);
	}
	@Override
	public void environmentDataIn(Environment environment) {
		environmentDao.insertEnvironmentData(environment);
	}
}

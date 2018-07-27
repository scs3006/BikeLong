package com.bikelong.dao;

import java.util.List;

import com.bikelong.mapper.EnvironmentMapper;
import com.bikelong.vo.Environment;

public class MySqlEnvironmentDao implements EnvironmentDao {
	
	private EnvironmentMapper environmentMapper;
	public void setEnvironmentMapper(EnvironmentMapper environmentMapper) {
		this.environmentMapper = environmentMapper;
	}
	@Override
	public List<Environment> selectEnvironmentListByRentalShopNo(int rentalshopNo) {
		return environmentMapper.selectEnvironmentListByRentalShopNo(rentalshopNo);
	}

}

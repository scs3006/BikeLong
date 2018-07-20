package com.bikelong.service;

import com.bikelong.dao.RentalShopDao;

public class RentalShopServiceImpl implements RentalShopService {

	private RentalShopDao rentalShopDao;
	public void setRentalShopDao(RentalShopDao rentalShopDao) {
		this.rentalShopDao = rentalShopDao;
	}
	
	
}

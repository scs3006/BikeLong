package com.bikelong.service;

import com.bikelong.dao.RentalShopDao;
import com.bikelong.vo.RentalShop;

public class RentalShopServiceImpl implements RentalShopService {

	private RentalShopDao rentalShopDao;
	public void setRentalShopDao(RentalShopDao rentalShopDao) {
		this.rentalShopDao = rentalShopDao;
	}
	
	@Override
	public RentalShop findRentalShop() {
		
		RentalShop rentalShop = rentalShopDao.selectRentalShop();
		
		return rentalShop;
	}
	
	
}

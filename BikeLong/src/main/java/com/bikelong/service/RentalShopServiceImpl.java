package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.RentalShopDao;
import com.bikelong.vo.RentalShop;

public class RentalShopServiceImpl implements RentalShopService {

	private RentalShopDao rentalShopDao;
	public void setRentalShopDao(RentalShopDao rentalShopDao) {
		this.rentalShopDao = rentalShopDao;
	}
	
	@Override
	public List<RentalShop> findRentalShop() {
		
		List<RentalShop> rentalShop = rentalShopDao.selectRentalShop();
		
		return rentalShop;
	}

	@Override
	public List<RentalShop> searchRentalShop(String select, String text) {
		
		List<RentalShop> rentalShop = rentalShopDao.searchRentalShop(select, text);
		
		return rentalShop;
	}

	@Override
	public RentalShop mobileRentalShop() {
		
		
		
		return null;
	}
	
	
}

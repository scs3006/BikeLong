package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.RentalShopDao;
import com.bikelong.vo.Bike;
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
	public List<RentalShop> mobileRentalShop() {
		
		List<RentalShop> rentalShop = rentalShopDao.selectMobileRentalShop();
		
		return rentalShop;
	}

	@Override
	public List<Bike> mobileBike(int rentalShopNo) {
		
		List<Bike> bike = rentalShopDao.selectMobileBike(rentalShopNo);
		
		return bike;
	}

	@Override
	public List<RentalShop> mobileSearch(String mSearch) {

		List<RentalShop> rentalShop = rentalShopDao.selectMobileSearch(mSearch);
		
		return rentalShop;
	}

	@Override
	public void updateBikeAndRentalShopTx(int bikeNo, int rentalShopNo, int request) {
		try {
			rentalShopDao.updateBike(bikeNo, rentalShopNo, request);
			rentalShopDao.updateRentalShop(rentalShopNo, request);
		} catch (Exception e) {
			throw new RuntimeException();
		}
		
	}
	
	
}

package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Bike;
import com.bikelong.vo.RentalShop;

public interface RentalShopDao {

	List<RentalShop> selectRentalShop();

	List<RentalShop> searchRentalShop(String select, String text);

	List<RentalShop> selectMobileRentalShop();

	List<Bike> selectMobileBike(int rentalShopNo);

	List<RentalShop> selectMobileSearch(String mSearch);

	void updateBike(int bikeNo, int request, int rentalShopNo);

	void updateRentalShop(int rentalShopNo, int request);

}

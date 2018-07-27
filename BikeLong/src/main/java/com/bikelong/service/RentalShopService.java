package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.RentalShop;

public interface RentalShopService {

	List<RentalShop> findRentalShop();

	List<RentalShop> searchRentalShop(String select, String text);

	RentalShop mobileRentalShop();

}

package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.RentalShop;

public interface RentalShopDao {

	List<RentalShop> selectRentalShop();

	List<RentalShop> searchRentalShop(String select, String text);

	List<RentalShop> selectMobileRentalShop();

}

package com.bikelong.dao;

import com.bikelong.mapper.RentalShopMapper;
import com.bikelong.vo.RentalShop;

public class MySqlRentalShopDao implements RentalShopDao {

	private RentalShopMapper rentalShopMapper;
	public void setRentalShopMapper(RentalShopMapper rentalShopMapper) {
		this.rentalShopMapper = rentalShopMapper;
	}
	
	@Override
	public RentalShop selectRentalShop() {
		
		RentalShop rentalShop = rentalShopMapper.selectRentalShop();
		
		return rentalShop;
	}
	
	
	
}

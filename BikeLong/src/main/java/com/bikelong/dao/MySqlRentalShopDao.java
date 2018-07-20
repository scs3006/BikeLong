package com.bikelong.dao;

import com.bikelong.mapper.RentalShopMapper;

public class MySqlRentalShopDao implements RentalShopDao {

	private RentalShopMapper rentalShopMapper;
	public void setRentalShopMapper(RentalShopMapper rentalShopMapper) {
		this.rentalShopMapper = rentalShopMapper;
	}
	
	
	
}

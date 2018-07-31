package com.bikelong.dao;

import java.util.HashMap;
import java.util.List;

import com.bikelong.mapper.RentalShopMapper;
import com.bikelong.vo.Bike;
import com.bikelong.vo.RentalShop;

public class MySqlRentalShopDao implements RentalShopDao {

	private RentalShopMapper rentalShopMapper;
	public void setRentalShopMapper(RentalShopMapper rentalShopMapper) {
		this.rentalShopMapper = rentalShopMapper;
	}
	
	@Override
	public List<RentalShop> selectRentalShop() {
		
		List<RentalShop> rentalShop = rentalShopMapper.selectRentalShop();
		
		return rentalShop;
	}

	@Override
	public List<RentalShop> searchRentalShop(String select, String text) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("select", select);
		params.put("text", text);
		
		List<RentalShop> rentalShop = rentalShopMapper.searchRentalShop(params);
		
		return rentalShop;
	}

	@Override
	public List<RentalShop> selectMobileRentalShop() {
		
		List<RentalShop> rentalShop = rentalShopMapper.selectMobileRentalShop();
		
		return rentalShop;
	}

	@Override
	public List<Bike> selectMobileBike(int rentalShopNo) {
		
		List<Bike> bike = rentalShopMapper.selectMobileBike(rentalShopNo);
		
		return bike;
	}

	@Override
	public List<RentalShop> selectMobileSearch(String mSearch) {
		
		List<RentalShop> rentalShop = rentalShopMapper.selectMobileSearch(mSearch);
		
		return rentalShop;
	}

	@Override
	public void updateRentalShop(int rentalShopNo, int request) {
		HashMap<String, Object> params =  new HashMap<>();
		params.put("rentalShopNo", rentalShopNo);
		params.put("request", request);
		rentalShopMapper.updateRentalShop(params);
	}

	@Override
	public void updateBike(int bikeNo, int rentalShopNo, int request) {
		HashMap<String, Object> params =  new HashMap<>();
		params.put("bikeNo", bikeNo);
		params.put("request", request);
		params.put("rentalShopNo", rentalShopNo);
		rentalShopMapper.updateBike(params);
	}
	
	
	
}

package com.bikelong.mapper;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.RentalShop;

public interface RentalShopMapper {

	List<RentalShop> selectRentalShop();

	List<RentalShop> searchRentalShop(HashMap<String, Object> params);

	List<RentalShop> selectMobileRentalShop();

}

package com.bikelong.dao;

import com.bikelong.mapper.GpsMapper;

public class MySqlGpsDao implements GpsDao {
	
	private GpsMapper gpsMapper;
	public void setGpsMapper(GpsMapper gpsMapper) {
		this.gpsMapper = gpsMapper;
	}

}

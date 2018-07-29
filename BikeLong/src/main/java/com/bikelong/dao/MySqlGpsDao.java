package com.bikelong.dao;

import com.bikelong.mapper.GpsMapper;
import com.bikelong.vo.Gps;

public class MySqlGpsDao implements GpsDao {
	
	private GpsMapper gpsMapper;
	public void setGpsMapper(GpsMapper gpsMapper) {
		this.gpsMapper = gpsMapper;
	}
	@Override
	public void insertGps(Gps gps) {
		gpsMapper.insertGps(gps);
	}

}

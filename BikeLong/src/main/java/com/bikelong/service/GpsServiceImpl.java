package com.bikelong.service;

import com.bikelong.dao.GpsDao;

public class GpsServiceImpl implements GpsService {

	private GpsDao gpsDao;
	public void setGpsDao(GpsDao gpsDao) {
		this.gpsDao = gpsDao;
	}
	
}

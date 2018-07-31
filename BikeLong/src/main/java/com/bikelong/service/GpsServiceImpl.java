package com.bikelong.service;

import com.bikelong.dao.GpsDao;
import com.bikelong.vo.Gps;

public class GpsServiceImpl implements GpsService {

	private GpsDao gpsDao;
	public void setGpsDao(GpsDao gpsDao) {
		this.gpsDao = gpsDao;
	}
	@Override
	public void insertGps(Gps gps) {
		gpsDao.insertGps(gps);
	}
}

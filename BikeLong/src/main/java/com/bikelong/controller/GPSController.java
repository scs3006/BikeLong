package com.bikelong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.GpsService;
import com.bikelong.vo.Gps;

@Controller
@RequestMapping(value = "/gps")
public class GPSController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("gpsService")
	private GpsService gpsService;
	
	@GetMapping(value = "/minsertgps.action")
	@ResponseBody
	public void getInsertGps(Gps gps, String latitude, String longitude ) {
		System.out.println("latitude : " + latitude);
		System.out.println("longitude : " + longitude);
		gps.setLatitude(Double.parseDouble(latitude));
		gps.setLongitude(Double.parseDouble(longitude));
		gpsService.insertGps(gps);
	}
		
}








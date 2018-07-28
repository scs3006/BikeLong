package com.bikelong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bikelong.service.GpsService;

@Controller
@RequestMapping(value = "/gps")
public class GPSController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("gpsService")
	private GpsService gpsService;
		
}








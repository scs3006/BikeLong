package com.bikelong.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.EnvironmentService;
import com.bikelong.vo.Environment;

@Controller
@RequestMapping(value = "/environment")
public class EnvironmentController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("environmentService")
	private EnvironmentService environmentService;
	
	@GetMapping(value = "/selectenvironmentlist.action")
	public String postSelectEnvironmentList(int rentalshopNo) {
		// 로그인 가능한지 확인 (데이터베이스에서 확인 - Service 객체에 요청)
		List<Environment> environments = environmentService.getEnvironmentListByRentalShopNo(rentalshopNo);
		
		return "chart/environmentChart";
	}
	
	@RequestMapping(value = { "environmentdata.action" }, method = RequestMethod.GET)
	public void arduinoData(int voMeasured, Environment environment) {
		
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat timeformat = new SimpleDateFormat("HH");
		String date = dateformat.format(new Date());
		String time = timeformat.format(new Date());
		
		float calcVoltage = (float) (voMeasured * (5.0 / 1024.0));
		float dust = (float) (0.17 * calcVoltage);
		environment.setDust(dust);
		environment.setTime(Integer.parseInt((time)));
		environment.setDate(date);
		
		System.out.println("들어옴");

		environmentService.environmentDataIn(environment);
	}
	
}
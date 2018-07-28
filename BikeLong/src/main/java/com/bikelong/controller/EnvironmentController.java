package com.bikelong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public void helloArduino(int t, int h, int voMeasured) {
		
		System.out.printf("온도 값 : %d\n습도 값 : %d\n 미세먼지 값:%d\n", t, h, voMeasured);
		float calcVoltage = (float) (voMeasured * (5.0 / 1024.0));
		float dustDensity = (float) (0.17 * calcVoltage-0.1);
		System.out.println(dustDensity);
		
		
	}
	
}








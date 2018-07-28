package com.bikelong.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String postSelectEnvironmentList(int rentalshopNo, Model model) {
		
		SimpleDateFormat startDateFormat = new SimpleDateFormat ( "yyyy-MM-dd 00:00:00");
		SimpleDateFormat endDateFormat = new SimpleDateFormat ( "yyyy-MM-dd 23:59:59");
		String start = startDateFormat.format (new Date());
		String end = endDateFormat.format (new Date());
		
		List<Environment> environments = environmentService.getEnvironmentListByRentalShopNo(rentalshopNo, start, end);
		if(environments!=null) {
			model.addAttribute("environments",environments);
		}
		return "chart/environmentChart";
	}
	
	@PostMapping(value = "/selectenvironment.action")
	@ResponseBody
	public Environment postSelectEnvironment(int rentalshopNo) {
		
		SimpleDateFormat startDateFormat = new SimpleDateFormat ( "yyyy-MM-dd 00:00:00");
		SimpleDateFormat endDateFormat = new SimpleDateFormat ( "yyyy-MM-dd 23:59:59");
		String start = startDateFormat.format (new Date());
		String end = endDateFormat.format (new Date());
		
		Environment environment = environmentService.getEnvironmentByRentalShopNo(rentalshopNo, start, end);
		if(environment!=null) {
			return environment;
		}
		return null;
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
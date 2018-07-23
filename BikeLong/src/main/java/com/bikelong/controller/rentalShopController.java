package com.bikelong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.RentalShopService;
import com.bikelong.vo.RentalShop;

@Controller
public class rentalShopController {
	
	// 자동 의존성 주입
	@Autowired
	@Qualifier("rentalShopService")
	private RentalShopService rentalShopService;
	
	
	@GetMapping(value = "/rentalShop.action")
	public String rentalShop(Model model) {
		
		List<RentalShop> rentalShop = rentalShopService.findRentalShop();
		model.addAttribute("rentalShops", rentalShop);
		
		return "rentalShop/rentalShop";
	}
	
	//@PostMapping(value = "/search.action")
	@RequestMapping(value = "/search.action")
	@ResponseBody
	public List<RentalShop> search(String select, String text, Model model) {
		
		List<RentalShop> rentalShop = rentalShopService.searchRentalShop(select, text);
		
		for(RentalShop re : rentalShop) {
			System.out.println(re.getRentalShopName());
		}
		
		return rentalShop;
	}
	
}

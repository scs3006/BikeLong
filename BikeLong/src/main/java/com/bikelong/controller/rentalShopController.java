package com.bikelong.controller;

import java.util.HashMap;
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
		
		return rentalShop;
	}
	
	@GetMapping(value = "/rentalShopWrite.action")
	public String rentalShopShowWrite() {
		return "rentalShop/rentalShop_write";
	}
	
	@PostMapping(value = "/rentalShopWrite.action")
	public String rentalShopWrite() {
		
		
		
		return "redirect:rentalShop.action";
	}
	
	@RequestMapping(value = "/mobile_rentalShop.action")
	@ResponseBody
	public List<RentalShop> mobileRentalShop() {
		System.out.println("모바일 접속 됨");
		List<RentalShop> rentalShop = rentalShopService.mobileRentalShop();
		if(rentalShop != null) {
			return rentalShop;
		} else {
			return null;
		}
	}
	
	@RequestMapping(value = "/mobile_search.action")
	@ResponseBody
	public List<RentalShop> mobileSearch() {
		
		System.out.println("검색 모바일 접속");
		
		return null;
	}
}

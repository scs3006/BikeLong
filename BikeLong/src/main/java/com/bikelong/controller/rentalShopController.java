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
import com.bikelong.vo.Bike;
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
			System.out.println("성공");
			return rentalShop;
		} else {
			return null;
		}
	}
	
	@RequestMapping(value = "/mobile_search.action")
	@ResponseBody
	public List<RentalShop> mobileSearch(String mSearch) {
		
		System.out.println("검색 모바일 접속");
		System.out.println(mSearch);
		
		List<RentalShop> rentalShop = rentalShopService.mobileSearch(mSearch);
		
		return rentalShop;
	}
	
	@RequestMapping(value = "/mobile_bike.action")
	@ResponseBody
	public List<Bike> mobileBike(int rentalShopNo) {
		
		System.out.println("자전거 접속됨");
		System.out.println(rentalShopNo);
		List<Bike> bike = rentalShopService.mobileBike(rentalShopNo);
		
		for(Bike b : bike) {
			System.out.println(b.getRentalShopName());
		}
		
		return bike;
	}
	
	//자전거, 렌탈샵 업데이트 하는 메소드
	@RequestMapping(value = "/mobile_updateBikeAndRentalShop.action")
	@ResponseBody
	public void mobileUpdateBikeAndRentalShop(int bikeNo, int rentalShopNo, int request) {
		System.out.println("들어옴");
		System.out.println(bikeNo);
		System.out.println(rentalShopNo);
		System.out.println(request);
		rentalShopService.updateBikeAndRentalShopTx(bikeNo,rentalShopNo, request);
		System.out.println("처리완료");
	}
}

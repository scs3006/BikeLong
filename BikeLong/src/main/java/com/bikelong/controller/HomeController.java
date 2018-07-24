package com.bikelong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bikelong.service.NoticeBoardService;
import com.bikelong.vo.Board;

@Controller
public class HomeController {
	
	@Autowired
	@Qualifier(value = "noticeBoardService")
	private NoticeBoardService noticeBoarService;
	
	@RequestMapping(value = { "/", "/index.action" }, method = RequestMethod.GET)
	public String home(Model model) {
		
		List<Board> noticeBoardLists = noticeBoarService.findBoardListWithPaging(0, 10);
		model.addAttribute("noticeList", noticeBoardLists);
		
		return "index";
	}

}








package com.bikelong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.NoticeBoardService;
import com.bikelong.service.SharingBoardService;
import com.bikelong.vo.Board;
import com.bikelong.vo.SharingBoard;

@Controller
public class HomeController {
	
	@Autowired
	@Qualifier(value = "noticeBoardService")
	private NoticeBoardService noticeBoarService;
	
	@Autowired
	@Qualifier(value = "sharingBoardService")
	private SharingBoardService sharingBoardService;
	
	@RequestMapping(value = { "/", "/index.action" }, method = RequestMethod.GET)
	public String home(Model model) {
		
		int from = 0;
		int to = 6;
		List<SharingBoard> sharingBoardList = sharingBoardService.findBoardList(from, to);
		for (SharingBoard sharingBoard : sharingBoardList) {
			String [] imagepath = sharingBoard.getContent().split("photoupload/", 40);
			if(imagepath.length>1) {
				sharingBoard.setImageName((String) imagepath[1].subSequence(0, 40));
			}else {
				sharingBoard.setImageName("b9bbe958-c6c1-46dc-a8b3-4f5ba916dce3.gif");
			}
		}
		
		List<Board> noticeBoardLists = noticeBoarService.findBoardListWithPaging(0, 10);

		model.addAttribute("sharingBoardList", sharingBoardList);
		model.addAttribute("noticeList", noticeBoardLists);
		
		return "index";
	}
	

}


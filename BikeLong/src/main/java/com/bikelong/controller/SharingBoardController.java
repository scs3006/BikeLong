package com.bikelong.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bikelong.service.SharingBoardService;
import com.bikelong.vo.SharingBoard;

@Controller
@RequestMapping(value = "route")
public class SharingBoardController {
	
	@Autowired
	@Qualifier(value = "sharingBoardService")
	private SharingBoardService sharingBoarService;
	
	
	@RequestMapping(value = "sharingboardlist.action", method = RequestMethod.GET)
	public String list(Model model) {
		
		List<SharingBoard> sharingBoardLists = sharingBoarService.findBoardList();
		for (SharingBoard sharingBoard : sharingBoardLists) {
			String [] imagepath = sharingBoard.getContent().split("photoupload/", 40);
			sharingBoard.setImageName((String) imagepath[1].subSequence(0, 40));
		}
		model.addAttribute("sharingBoardLists", sharingBoardLists);
		return "sharingboard/sharingboardlist";
	}
	
	
	@RequestMapping(value = "sharingboarddetail.action", method = RequestMethod.GET)
	public String detail(@RequestParam (value="boardNo", defaultValue="0") int boardNo, Model model, SharingBoard sharingBoardDetail) {
		
		sharingBoardDetail = sharingBoarService.findBoard(boardNo);
		sharingBoardDetail.setDate(sharingBoardDetail.getDate().substring(0, 10));
		sharingBoardDetail.setBoardNo(boardNo);
		model.addAttribute("sharingBoardDetail", sharingBoardDetail);
		
		return "sharingboard/sharingboarddetail";
	}
	
	
	@RequestMapping(value = "sharingboardwrite.action", method = RequestMethod.GET)
	public String write(HttpSession session) {
		if(session.getAttribute("id")!=null) {
			return "sharingboard/sharingboardwrite";
		}else {
			return "index";
		}
	}
	
	
	@RequestMapping(value = "sharingboardwrite.action", method = RequestMethod.POST)
	public String writePost(SharingBoard sharingBoard) {
		int cate = 2;
		sharingBoard.setCategory(cate);
		sharingBoarService.writeBoard(sharingBoard);
				
		return "redirect:sharingboardlist.action";
	}
	
	
	@RequestMapping(value = "sharingboardupdate.action", method = RequestMethod.GET)
	public String update(@RequestParam (value ="boardNo", defaultValue ="0") int boardNo, Model model, SharingBoard sharingBoardUpdate) {
		
		sharingBoardUpdate = sharingBoarService.findBoard(boardNo);
		sharingBoardUpdate.setBoardNo(boardNo);
		sharingBoardUpdate.setDate(sharingBoardUpdate.getDate().substring(0, 10));
		model.addAttribute("sharingBoardUpdate", sharingBoardUpdate);
		return "sharingboard/sharingboardupdate";
	}
	
	@RequestMapping(value = "sharingboardupdate.action", method = RequestMethod.POST)
	public String updatePost(String defaultLocationNo, SharingBoard sharingBoard, Model model, RedirectAttributes redirectAttributes) {
		if(sharingBoard.getLocationNo()=="0") {
			sharingBoard.setLocationNo(defaultLocationNo);
		}
		sharingBoarService.updateBoard(sharingBoard);
		redirectAttributes.addAttribute("boardNo", sharingBoard.getBoardNo());
				
		return "redirect:sharingboarddetail.action";
	}
	
										 
	@RequestMapping(value = "sharingboarddelete.action", method = RequestMethod.GET)
	public String delete(@RequestParam (value ="boardNo", defaultValue ="0") int boardNo) {
		
		sharingBoarService.deleteBoard(boardNo);
		
		return "redirect:sharingboardlist.action";
	}
	
}
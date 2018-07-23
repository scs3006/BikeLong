package com.bikelong.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bikelong.service.ReplyService;
import com.bikelong.service.SharingBoardService;
import com.bikelong.vo.History;
import com.bikelong.vo.Reply;
import com.bikelong.vo.SharingBoard;

@Controller
@RequestMapping(value = "route")
public class SharingBoardController {
	
	@Autowired
	@Qualifier(value = "sharingBoardService")
	private SharingBoardService sharingBoarService;
	
	@Autowired
	@Qualifier(value = "replyService")
	private ReplyService replyService;
	
	
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
		sharingBoardDetail.setBoardNo(boardNo);
		List<Reply> replyList = replyService.getReplyList(boardNo);
		
		sharingBoardDetail.getHistory();
		
		if(replyList != null && replyList.size() > 0) {
			model.addAttribute("replyList", replyList);
		}
		model.addAttribute("sharingBoardDetail", sharingBoardDetail);
		
		return "sharingboard/sharingboarddetail";
	}
	
	@RequestMapping(value = "sharingboardwrite.action", method = RequestMethod.GET)
	public String write(Model model, String id) {
		
		//List<History> history = sharingBoarService.findHistory(id);
		//model.addAttribute("history", history);
		
		return "sharingboard/sharingboardwrite";
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
	
	
	@RequestMapping(value = "gpsfind.action", method = RequestMethod.GET)
	@ResponseBody
	public String gpsfind(String historyTime, History history, Model model) {
		
		String[] str = historyTime.split("/");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			java.sql.Date startTime = (Date) dateFormat.parse(str[0]);
			java.sql.Date endTime = (Date) dateFormat.parse(str[1]);
			history.setStartTime(startTime);
			history.setEndTime(endTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		List<History> histories = sharingBoarService.gpsfind(history);
		model.addAttribute("histories", histories);
		
		return "success";
	}
	
	
	
}
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bikelong.service.ReplyService;
import com.bikelong.service.SharingBoardService;
import com.bikelong.ui.ThePager2;
import com.bikelong.vo.History;
import com.bikelong.vo.Reply;
import com.bikelong.vo.SharingBoard;

@Controller
@RequestMapping(value = "route")
public class SharingBoardController {
	
	@Autowired
	@Qualifier(value = "sharingBoardService")
	private SharingBoardService sharingBoardService;
	
	@Autowired
	@Qualifier(value = "replyService")
	private ReplyService replyService;
	
	
	@RequestMapping(value = "sharingboardlist.action", method = RequestMethod.GET)
	public String list(@RequestParam(value = "pageno", defaultValue = "0") int pageNo, Model model) {
		
		int pageSize = 6; //한 페이지에 표시할 데이터 갯수
		int from = pageNo * pageSize;
		int to = pageSize;
		int pagerSize = 5;//번호로 표시할 페이지 목록
		String linkUrl = "sharingboardlist.action";
		
		List<SharingBoard> sharingBoardLists = sharingBoardService.findBoardList(from, to);
		for (SharingBoard sharingBoard : sharingBoardLists) {
			String [] imagepath = sharingBoard.getContent().split("photoupload/", 40);
			if(imagepath.length>1) {
				sharingBoard.setImageName((String) imagepath[1].subSequence(0, 40));
			}else {
				sharingBoard.setImageName("b9bbe958-c6c1-46dc-a8b3-4f5ba916dce3.gif");
			}
		}
		int dataCount = sharingBoardService.getBoardCount();
		
		ThePager2 pager = new ThePager2(dataCount, pageNo, pageSize, pagerSize, linkUrl);
		
		model.addAttribute("pager", pager);
		model.addAttribute("pageno", pageNo);
		model.addAttribute("sharingBoardLists", sharingBoardLists);
		return "sharingboard/sharingboardlist";
	}
	
	@RequestMapping(value = "sharingboarddetail.action", method = RequestMethod.GET)
	public String detail(@RequestParam(value ="pageno", defaultValue = "0") int pageNo, @RequestParam (value="boardNo", defaultValue="0") int boardNo, Model model, SharingBoard sharingBoardDetail) {

		sharingBoardDetail = sharingBoardService.findBoard(boardNo);
		sharingBoardDetail.setBoardNo(boardNo);
		List<Reply> replyList = replyService.getReplyList(boardNo);
		History history = sharingBoardDetail.getHistories();
		
		if(replyList != null && replyList.size() > 0) {
			model.addAttribute("replyList", replyList);
		}
		model.addAttribute("sharingBoardDetail", sharingBoardDetail);
		model.addAttribute("history", history);
		model.addAttribute("pageno", pageNo);
		
		return "sharingboard/sharingboarddetail";
	}
	
	@RequestMapping(value = "sharingboardwrite.action", method = RequestMethod.GET)
	public String write(Model model, String id) {
			List<History> history = sharingBoardService.findHistory(id);
			
			model.addAttribute("history", history);
			
			return "sharingboard/sharingboardwrite";
			
	}
	
	@RequestMapping(value = "sharingboardwrite.action", method = RequestMethod.POST)
	public String writePost(SharingBoard sharingBoard) {
		int cate = 2;
		sharingBoard.setCategory(cate);
		sharingBoardService.writeBoard(sharingBoard);
				
		return "redirect:sharingboardlist.action";
	}
	
	@RequestMapping(value = "sharingboardupdate.action", method = RequestMethod.GET)
	public String update(@RequestParam(value ="pageno", defaultValue = "0") int pageNo, 
			@RequestParam (value ="boardNo", defaultValue ="0") int boardNo, Model model, 
			SharingBoard sharingBoardUpdate, String id) {
		
			List<History> history = sharingBoardService.findHistory(id);
			sharingBoardUpdate = sharingBoardService.findBoard(boardNo);
			sharingBoardUpdate.setBoardNo(boardNo);
			History History = sharingBoardUpdate.getHistories();
			
			model.addAttribute("sharingBoardUpdate", sharingBoardUpdate);
			model.addAttribute("history", history);
			model.addAttribute("History", History);
			model.addAttribute("pageno", pageNo);
			
			return "sharingboard/sharingboardupdate";
	}
	
	@RequestMapping(value = "sharingboardupdate.action", method = RequestMethod.POST)
	public String updatePost(@RequestParam(value ="pageno", defaultValue = "0") int pageNo, String defaultLocationNo,
			SharingBoard sharingBoard, Model model, RedirectAttributes redirectAttributes) {
		
		if(sharingBoard.getLocationNo()=="0") {
			sharingBoard.setLocationNo(defaultLocationNo);
		}
		sharingBoardService.updateBoard(sharingBoard);
		redirectAttributes.addAttribute("boardNo", sharingBoard.getBoardNo());
		model.addAttribute("pageno", pageNo);
				
		return "redirect:sharingboarddetail.action";
	}
	
	@RequestMapping(value = "sharingboarddelete.action", method = RequestMethod.GET)
	public String delete(@RequestParam (value ="boardNo", defaultValue ="0") int boardNo) {
			sharingBoardService.deleteBoard(boardNo);
			
			return "redirect:sharingboardlist.action";
	}
	
	
	@RequestMapping(value = "gpsfind.action", method = RequestMethod.GET)
	@ResponseBody
	public List<History> gpsfind(String startTime, String endTime) {
		List<History> histories = sharingBoardService.gpsfind(startTime,endTime);
		return histories;
	}
		
}
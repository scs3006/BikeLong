package com.bikelong.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bikelong.service.ReplyService;
import com.bikelong.service.TrailBoardService;
import com.bikelong.ui.*;
import com.bikelong.vo.Reply;
import com.bikelong.vo.TrailBoard;


@Controller
@RequestMapping(value = "trailpathboard")
public class TrailBoardController {
	
	
	@Autowired
	@Qualifier(value = "replyService")
	private ReplyService replyService;

	@Autowired
	@Qualifier(value = "trailBoardService")
	private TrailBoardService trailBoardService;

	@GetMapping(value = "list.action")
	public String list(Model model,
			@RequestParam(value = "pageno", defaultValue = "0") int pageNo) {
		List<TrailBoard> trailBoardlist = trailBoardService.findBoardList();
	
		model.addAttribute("trailBoardlist", trailBoardlist);
		return "trail/list";
	}

	@GetMapping(value = "detail.action")
	public String detail(@RequestParam(value ="pageno", defaultValue = "0") int pageNo,
			int boardNo, Model model) {
		List<Reply> replyList = replyService.getReplyList(boardNo);
		
		if(replyList != null && replyList.size() > 0) {
			model.addAttribute("replyList", replyList);
		}
		
		TrailBoard trailBoarddetail = trailBoardService.findBoard(boardNo);
		model.addAttribute("trailBoarddetail",trailBoarddetail);
		model.addAttribute("pageno", pageNo);
		return "trail/detail";
	}

	@GetMapping(value = "write.action")
	public String write() {
			return "trail/write";
	}

	@PostMapping(value = "write.action")
	public String writePost(TrailBoard trailBoard) {
		int cate = 1;
		trailBoard.setCategory(cate);
		trailBoardService.writeBoard(trailBoard);
System.out.println(trailBoard.getLocationNo());
		return "trail/write";
	}

	@GetMapping(value = "update.action")
	public String update(Model model, TrailBoard trailboardupdate,
			@RequestParam(value ="pageno", defaultValue = "0") int pageNo, int boardNo) {
		trailboardupdate = trailBoardService.findBoard(boardNo);
		trailboardupdate.setBoardNo(boardNo);
		trailboardupdate.setDate(trailboardupdate.getDate().substring(0, 10));
		model.addAttribute("trailboardupdate", trailboardupdate);
		model.addAttribute("pageno", pageNo);
		return "trail/update";
	}
	@PostMapping(value = "update.action")
	@ResponseBody
	public String postUpdate(TrailBoard trailBoard) {
		try {
			trailBoardService.updateBoard(trailBoard);
		} catch (Exception ex) { // 등록 실패한 경우
			return "fail";
		}
		return "success"; 
	}
	
	@GetMapping(value = "delete.action")
	public String delete(
			@RequestParam(value ="boardNo", defaultValue = "-1")int boardNo,
			@RequestParam(value ="pageNo", defaultValue = "1") int pageNo) {
		
		System.out.println(boardNo);
		trailBoardService.deleteBoard(boardNo);
		return "redirect:list.action?pageno=" + pageNo;
	}
}

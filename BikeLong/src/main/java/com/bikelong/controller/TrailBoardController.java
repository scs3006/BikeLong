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
import com.bikelong.vo.Board;
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

		int pageSize = 6; //한 페이지에 표시할 데이터 갯수
		int from = pageNo * pageSize;
		int to = pageSize;

		int pagerSize = 5;//번호로 표시할 페이지 목록
		String linkUrl = "list.action";

		List<TrailBoard> trailBoardlist = trailBoardService.findBoardList(from, to);
		int dataCount = trailBoardService.getBoardCount();

		ThePager2 pager = new ThePager2(dataCount, pageNo, pageSize, pagerSize, linkUrl);

		for (TrailBoard trailBoard : trailBoardlist) {
			String [] imagepath = trailBoard.getContent().split("photoupload/", 40);
			if(imagepath.length>1) {
				trailBoard.setImageName((String) imagepath[1].subSequence(0, 40));
			} else {
				trailBoard.setImageName("b9bbe958-c6c1-46dc-a8b3-4f5ba916dce3.gif");
			}
		}

		model.addAttribute("trailBoardlist", trailBoardlist);
		model.addAttribute("pager", pager);
		model.addAttribute("pageno", pageNo);
		return "trail/list";
	}

	@GetMapping(value = "detail.action")
	public String detail(@RequestParam(value ="pageno", defaultValue = "0") int pageNo,
			int boardNo, Model model, TrailBoard trailBoarddetail) {
		List<Reply> replyList = replyService.getReplyList(boardNo);
		trailBoarddetail = trailBoardService.findBoard(boardNo);

		if(replyList != null && replyList.size() > 0) {
			model.addAttribute("replyList", replyList);
		}

		model.addAttribute("trailBoarddetail",trailBoarddetail);
		model.addAttribute("pageno", pageNo);
		return "trail/detail";
	}

	@GetMapping(value = "write.action")
	public String getWrite() {

		return "trail/write";
	}

	@PostMapping(value = "write.action")
	public String postWrite(TrailBoard trailBoard) {
		int cate = 1;
		trailBoard.setCategory(cate);
		trailBoardService.writeBoard(trailBoard);
		System.out.println(trailBoard.getLocationNo());
		return "redirect:list.action";
	}

	@GetMapping(value = "update.action")
	public String getUpdate(@RequestParam(value ="pageno", defaultValue = "0") int pageNo, int boardNo, Model model) {
		TrailBoard trailBoardupdate = trailBoardService.findBoardByBoardNo(boardNo);
		model.addAttribute("trailBoardupdate", trailBoardupdate);
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
	@ResponseBody
	public String getDelete(int boardNo) {
		try {
			trailBoardService.deleteBoard(boardNo);	// 서비스에서 트랜잭션으로 댓글까지 지우는거 잊지말자!
		} catch (Exception ex) { // 등록 실패한 경우
			return "fail";
		}
		return "success"; 
	}
}

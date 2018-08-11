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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bikelong.service.NoticeBoardService;
import com.bikelong.service.ReplyService;
import com.bikelong.service.SuggestBoardService;
import com.bikelong.ui.ThePager2;
import com.bikelong.vo.Board;
import com.bikelong.vo.Reply;

@Controller
@RequestMapping(value = "suggestions")
public class SuggestBoardController {
	
	@Autowired
	@Qualifier(value = "suggestBoardService")
	private SuggestBoardService suggestBoardService;

	@Autowired
	@Qualifier(value = "replyService")
	private ReplyService replyService;
	
	@GetMapping(value = "list.action")
	public String getList(@RequestParam(value = "pageno", defaultValue = "0") int pageNo, Model model) {
		
		int pageSize = 8; //한 페이지에 표시할 데이터 갯수
		int from = pageNo * pageSize;
		int to = pageSize;
		
		int pagerSize = 5;//번호로 표시할 페이지 목록
		String linkUrl = "list.action";
		
		List<Board> suggestBoardLists = suggestBoardService.findBoardListWithPaging(from, to);
		int dataCount = suggestBoardService.getBoardCount();
		
		ThePager2 pager = new ThePager2(dataCount, pageNo, pageSize, pagerSize, linkUrl);
		
		model.addAttribute("suggestList", suggestBoardLists);
		model.addAttribute("pager", pager);
		model.addAttribute("pageno", pageNo);
		return "suggestions/list";
	}
	
	
	@GetMapping(value = "detail.action")
	public String getDetail(@RequestParam(value ="pageno", defaultValue = "0") int pageNo, int boardNo, Model model) {
		Board board = suggestBoardService.findBoardByBoardNo(boardNo);
		List<Reply> replyList = replyService.getReplyList(boardNo);
		
		if(replyList != null && replyList.size() > 0) {
			model.addAttribute("replyList", replyList);
		}
		model.addAttribute("board", board);
		model.addAttribute("pageno", pageNo);
		return "suggestions/detail";
	}
	
	
	@GetMapping(value = "write.action")
	public String getWrite(HttpSession session) {
//		if(session.getAttribute("id")!=null) {
//			return "sharingwrite";
//		}else {
//			return "sign-in";
//		}
		return "suggestions/write";
	}
	
	
	@PostMapping(value = "write.action")
	public String postWrite(Board board) {
		//게시판 분류 번호
		int category = 4;
		//공지사항에는 필요없는 지역번호지면 Not Null 컬럼이기 때문에 임의의 int값을 넣어준다.
		int locationNo = 1;
		
		board.setCategory(category);
		board.setLocationNo(locationNo);
		suggestBoardService.writeBoard(board);
		
		return "redirect:list.action";
	}
	
	@GetMapping(value = "update.action")
	public String getUpdate(@RequestParam(value ="pageno", defaultValue = "0") int pageNo, int boardNo, Model model) {
		Board board = suggestBoardService.findBoardByBoardNo(boardNo);
		model.addAttribute("board", board);
		model.addAttribute("pageno", pageNo);
		return "suggestions/update";
	}
	
	@PostMapping(value = "update.action")
	@ResponseBody
	public String postUpdate(Board board) {
		try {
			suggestBoardService.updateBoard(board);
		} catch (Exception ex) { // 등록 실패한 경우
			return "fail";
		}
		return "success"; 
	}
	
	@GetMapping(value = "delete.action")
	@ResponseBody
	public String getDelete(int boardNo) {
		try {
			suggestBoardService.deleteBoardTx(boardNo);	// 서비스에서 트랜잭션으로 댓글까지 지우는거 잊지말자!
		} catch (Exception ex) { // 등록 실패한 경우
			return "fail";
		}
		return "success"; 
	}	
}
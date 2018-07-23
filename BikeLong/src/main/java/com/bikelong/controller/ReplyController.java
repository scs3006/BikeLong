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

import com.bikelong.service.ReplyService;
import com.bikelong.vo.Reply;

@Controller
@RequestMapping(value = "/reply")
public class ReplyController {
	
	@Autowired
	@Qualifier(value = "replyService")
	private ReplyService replyService;
	
	@PostMapping(value = "/insert.action")
	@ResponseBody
	public String postInsertReply(Reply reply) {
		try {
			replyService.insertReply(reply);
		} catch (Exception ex) { // 등록 실패한 경우
			return "fail";
		}
		return "success"; 
	}
	
	@GetMapping(value = "/findReplyList.action")
	public String getFindReplyList(int boardNo, Model model) {
		List<Reply> replyList = replyService.getReplyList(boardNo);
		model.addAttribute("replyList", replyList);
		return "reply/comments";
	}
	
	@GetMapping(value = "/delete.action")
	@ResponseBody
	public String getDeleteReply(int replyNo) {
		try {
			replyService.deleteReply(replyNo);
		} catch (Exception ex) { // 등록 실패한 경우
			return "fail";
		}
		return "success"; 
	}

}








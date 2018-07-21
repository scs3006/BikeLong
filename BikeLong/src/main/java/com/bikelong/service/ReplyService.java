package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Reply;

public interface ReplyService {

	void insertReply(Reply reply);
	List<Reply> getReplyList(int boardNo);
	void deleteReply(int replyNo);

}
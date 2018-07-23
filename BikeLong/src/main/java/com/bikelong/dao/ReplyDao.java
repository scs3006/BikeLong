package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Reply;

public interface ReplyDao {

	void insertReply(Reply reply);
	List<Reply> selectReplyListByBoardNo(int boardNo);
	void deleteReply(int replyNo);
	void deleteReplyListByBoardNo(int boardNo);

}
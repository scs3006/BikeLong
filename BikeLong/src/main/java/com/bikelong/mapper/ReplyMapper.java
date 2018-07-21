package com.bikelong.mapper;

import java.util.List;

import com.bikelong.vo.Reply;

public interface ReplyMapper {

	void insertReply(Reply reply);
	List<Reply> selectReplyListByBoardNo(int boardNo);
	void deleteReply(int replyNo);
	
}

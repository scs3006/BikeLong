package com.bikelong.dao;

import java.util.List;

import com.bikelong.mapper.ReplyMapper;
import com.bikelong.vo.Reply;

public class MySqlReplyDao implements ReplyDao {
	
	private ReplyMapper replyMapper;

	public void setReplyMapper(ReplyMapper replyMapper) {
		this.replyMapper = replyMapper;
	}

	@Override
	public void insertReply(Reply reply) {
		replyMapper.insertReply(reply);
	}

	@Override
	public List<Reply> selectReplyListByBoardNo(int boardNo) {
		return replyMapper.selectReplyListByBoardNo(boardNo);
	}

	@Override
	public void deleteReply(int replyNo) {
		replyMapper.deleteReply(replyNo);
	}

	@Override
	public void deleteReplyListByBoardNo(int boardNo) {
		replyMapper.deleteReplyListByBoardNo(boardNo);
	}
}

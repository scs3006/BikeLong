package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.ReplyDao;
import com.bikelong.vo.Reply;

public class ReplyServiceImpl implements ReplyService {

	private ReplyDao replyDao;

	public void setReplyDao(ReplyDao replyDao) {
		this.replyDao = replyDao;
	}

	@Override
	public void insertReply(Reply reply) {
		replyDao.insertReply(reply);
	}

	@Override
	public List<Reply> getReplyList(int boardNo) {
		return replyDao.selectReplyListByBoardNo(boardNo);
	}

	@Override
	public void deleteReply(int replyNo) {
		replyDao.deleteReply(replyNo);
	}

}

package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.ReplyDao;
import com.bikelong.dao.SuggestBoardDao;
import com.bikelong.vo.Board;

public class SuggestBoardServiceImpl implements SuggestBoardService {

	private SuggestBoardDao suggestBoardDao;
	private ReplyDao replyDao;

	public void setSuggestBoardDao(SuggestBoardDao suggestBoardDao) {
		this.suggestBoardDao = suggestBoardDao;
	}

	public void setReplyDao(ReplyDao replyDao) {
		this.replyDao = replyDao;
	}

	@Override
	public void writeBoard(Board board) {
		suggestBoardDao.insertBoard(board);
	}
	
	@Override
	public List<Board> findBoardListWithPaging(int from, int to) {
		return suggestBoardDao.selectBoardListWithPaging(from,to);
	}

	@Override
	public Board findBoardByBoardNo(int boardNo) {
		return suggestBoardDao.selectBoardByBoardNo(boardNo);
	}

	@Override
	public void deleteBoardTx(int boardNo) {
		try {
			replyDao.deleteReplyListByBoardNo(boardNo);
			suggestBoardDao.deleteBoard(boardNo);
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}

	@Override
	public void updateBoard(Board board) {
		suggestBoardDao.updateBoard(board);
	}

	@Override
	public int getBoardCount() {
		return suggestBoardDao.selectBoardCount();
	}

}

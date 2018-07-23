package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.NoticeBoardDao;
import com.bikelong.dao.ReplyDao;
import com.bikelong.vo.Board;

public class NoticeBoardServiceImpl implements NoticeBoardService {

	private NoticeBoardDao noticeBoardDao;
	private ReplyDao replyDao;

	public void setNoticeBoardDao(NoticeBoardDao noticeBoardDao) {
		this.noticeBoardDao = noticeBoardDao;
	}

	public void setReplyDao(ReplyDao replyDao) {
		this.replyDao = replyDao;
	}

	@Override
	public void writeBoard(Board board) {
		noticeBoardDao.insertBoard(board);
	}
	
	@Override
	public List<Board> findBoardListWithPaging(int from, int to) {
		return noticeBoardDao.selectBoardListWithPaging(from,to);
	}

	@Override
	public Board findBoardByBoardNo(int boardNo) {
		return noticeBoardDao.selectBoardByBoardNo(boardNo);
	}

	@Override
	public void deleteBoardTx(int boardNo) {
		try {
			replyDao.deleteReplyListByBoardNo(boardNo);
			noticeBoardDao.deleteBoard(boardNo);
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}

	@Override
	public void updateBoard(Board board) {
		noticeBoardDao.updateBoard(board);
	}

	@Override
	public int getBoardCount() {
		return noticeBoardDao.selectBoardCount();
	}

}

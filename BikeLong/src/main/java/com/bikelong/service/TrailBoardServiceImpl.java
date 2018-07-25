package com.bikelong.service;

import java.util.*;
import com.bikelong.dao.*;
import com.bikelong.vo.*;

public class TrailBoardServiceImpl implements TrailBoardService {


	private TrailBoardDao trailBoardDao;
	private ReplyDao replyDao;

	public void setTrailBoardDao(TrailBoardDao trailBoardDao) {
		this.trailBoardDao = trailBoardDao;
	}	

	public void setReplyDao(ReplyDao replyDao) {
		this.replyDao = replyDao;
	}

	@Override
	public  void writeBoard(TrailBoard trailBoard) {
		trailBoardDao.insertBoard(trailBoard);
	}

	@Override
	public TrailBoard findBoard(int boardNo) {
		TrailBoard trailBoard = trailBoardDao.selectBoard(boardNo);
		return trailBoard;
	}

	@Override
	public List<TrailBoard> findBoardList(int from, int to) {
		List<TrailBoard> trailBoard = trailBoardDao.selectBoardList(from, to);
		return trailBoard;
	}


	@Override
	public void updateBoard(TrailBoard trailBoard) {

		trailBoardDao.updateBoard(trailBoard);
	}


	@Override
	public void deleteBoard(int boardNo) {
		try {
			replyDao.deleteReplyListByBoardNo(boardNo);
			trailBoardDao.deleteBoard(boardNo);
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}


	@Override
	public int getBoardCount() {

		return trailBoardDao.selectBoardCount();
	}



	@Override
	public TrailBoard findBoardByBoardNo(int boardNo) {

		return trailBoardDao.selectBoardByBoardNo(boardNo);
	}

}



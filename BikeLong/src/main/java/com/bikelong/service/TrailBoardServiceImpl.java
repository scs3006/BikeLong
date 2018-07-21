package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.TrailBoardDao;
import com.bikelong.vo.Board;

public class TrailBoardServiceImpl implements TrailBoardService {


	private TrailBoardDao trailBoardDao;
	public void setTrailBoardDao(TrailBoardDao trailBoardDao) {
		this.trailBoardDao = trailBoardDao;
	}	
	
	
	@Override
	public  void writeBoard(Board trailBoard) {
		trailBoardDao.insertBoard(trailBoard);
	}

	@Override
	public Board findBoard(String boardNo) {
		Board trailBoard = trailBoardDao.selectBoard(boardNo);
		return trailBoard;
	}

	@Override
	public List<Board> findBoardList() {
		List<Board> trailBoard = trailBoardDao.selectBoardList();
		return trailBoard;
	}



}

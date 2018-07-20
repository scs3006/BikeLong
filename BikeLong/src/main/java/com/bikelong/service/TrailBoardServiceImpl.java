package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.TrailBoardDao;
import com.bikelong.vo.TrailBoard;

public class TrailBoardServiceImpl implements TrailBoardService {


	private TrailBoardDao trailBoardDao;
	public void setTrailBoardDao(TrailBoardDao trailBoardDao) {
		this.trailBoardDao = trailBoardDao;
	}	
	
	
	@Override
	public  void writeBoard(TrailBoard trailBoard) {
		trailBoardDao.insertBoard(trailBoard);
	}

	@Override
	public TrailBoard findBoard(String boardNo) {
		TrailBoard trailBoard = trailBoardDao.selectBoard(boardNo);
		return trailBoard;
	}

	@Override
	public List<TrailBoard> findBoardList() {
		List<TrailBoard> trailBoard = trailBoardDao.selectBoardList();
		return trailBoard;
	}



}

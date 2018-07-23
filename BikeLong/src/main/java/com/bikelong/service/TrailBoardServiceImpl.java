package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.TrailBoardDao;
import com.bikelong.vo.*;

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
	public TrailBoard findBoard(int boardNo) {
		TrailBoard trailBoard = trailBoardDao.selectBoard(boardNo);
		return trailBoard;
	}

	@Override
	public List<TrailBoard> findBoardList() {
		List<TrailBoard> trailBoard = trailBoardDao.selectBoardList();
		return trailBoard;
	}


	@Override
	public void updateBoard(TrailBoard trailBoard) {
		
		trailBoardDao.updateBoard(trailBoard);
	}


	@Override
	public void deleteBoard(int boardNo) {
		
		trailBoardDao.deleteBoard(boardNo);
	}


}

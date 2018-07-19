package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.SharingBoardDao;
import com.bikelong.dao.TrailBoardDao;
import com.bikelong.vo.SharingBoard;
import com.bikelong.vo.TrailBoard;

public class TrailBoardServiceImpl implements TrailBoardService {

	private TrailBoardDao trailBoardDao;
	public void setSharingBoardDao(TrailBoardDao trailBoardDao) {
		this.trailBoardDao = trailBoardDao;
	}	
	
	@Override
	public  void writeBoard(TrailBoard trailBoard) {
		trailBoardDao.insertBoard(trailBoard);
	}

	@Override
	public List<TrailBoard> findBoard(String boardNo) {
		List<TrailBoard> trailBoard = trailBoardDao.selectBoard(boardNo);
		return trailBoard;
	}

	@Override
	public List<TrailBoard> findBoardList() {
		List<TrailBoard> sharingBoard = trailBoardDao.selectBoardList();
		return sharingBoard;
	}



}

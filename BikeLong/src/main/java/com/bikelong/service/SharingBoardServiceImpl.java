package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.SharingBoardDao;
import com.bikelong.vo.History;
import com.bikelong.vo.SharingBoard;

public class SharingBoardServiceImpl implements SharingBoardService {

	private SharingBoardDao sharingBoardDao;
	public void setSharingBoardDao(SharingBoardDao sharingBoardDao) {
		this.sharingBoardDao = sharingBoardDao;
	}	
	
	@Override
	public void writeBoard(SharingBoard sharingBoard) {
		sharingBoardDao.insertBoard(sharingBoard);
	}

	@Override
	public SharingBoard findBoard(int boardNo) {
		SharingBoard sharingBoard = sharingBoardDao.selectBoard(boardNo);
		//SharingBoard route = sharingBoardDao.selectHistory(boardNo);
		
		//SharingBoard routeGPS = sharingBoardDao.selectGPS();
		
		return sharingBoard;
	}

	@Override
	public List<SharingBoard> findBoardList() {
		List<SharingBoard> sharingBoard = sharingBoardDao.selectBoardList();
		return sharingBoard;
	}

	@Override
	public void updateBoard(SharingBoard sharingBoard) {
		sharingBoardDao.updateBoard(sharingBoard);
	}

	@Override
	public void deleteBoard(int boardNo) {
		sharingBoardDao.deleteBoard(boardNo);
	}

	@Override
	public List<History> findHistory(String id) {
		List<History> history = sharingBoardDao.selectHistory(id);
		return history;
	}

	@Override
	public List<History> gpsfind(History history) {
		List<History> histories = sharingBoardDao.selectgps(history);
		return histories;
	}





}

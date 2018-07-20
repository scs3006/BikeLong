package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.SharingBoardDao;
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
		return sharingBoard;
	}

	@Override
	public List<SharingBoard> findBoardList() {
		List<SharingBoard> sharingBoard = sharingBoardDao.selectBoardList();
		return sharingBoard;
	}



}

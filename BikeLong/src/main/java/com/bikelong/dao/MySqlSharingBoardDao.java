package com.bikelong.dao;

import java.util.List;

import com.bikelong.mapper.SharingBoardMapper;
import com.bikelong.vo.SharingBoard;

public class MySqlSharingBoardDao implements SharingBoardDao {
	
	private SharingBoardMapper sharingBoardMapper;
	public void setSharingBoardMapper(SharingBoardMapper sharingBoardMapper) {
		this.sharingBoardMapper = sharingBoardMapper;
	}


	@Override
	public void insertBoard(SharingBoard sharingBoard) {
		sharingBoardMapper.insertBoard(sharingBoard);
	}


	@Override
	public List<SharingBoard> selectBoard(String boardNo) {
		List<SharingBoard> sharingBoard = selectBoard(boardNo);
		return sharingBoard;
	}


	@Override
	public List<SharingBoard> selectBoardList() {
		List<SharingBoard> sharingBoard = selectBoardList();
		return sharingBoard;
	}
	

	
}

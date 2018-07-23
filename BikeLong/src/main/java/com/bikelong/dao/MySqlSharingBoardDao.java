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
	public SharingBoard selectBoard(int boardNo) {
		SharingBoard sharingBoard = sharingBoardMapper.selectBoard(boardNo);
		return sharingBoard;
	}


	@Override
	public List<SharingBoard> selectBoardList() {
		List<SharingBoard> sharingBoard = sharingBoardMapper.selectBoardList();
		return sharingBoard;
	}


	@Override
	public void updateBoard(SharingBoard sharingBoard) {
		sharingBoardMapper.updateBoard(sharingBoard);
	}


	@Override
	public void deleteBoard(int boardNo) {
		sharingBoardMapper.deleteBoard(boardNo);
	}



	
}

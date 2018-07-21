package com.bikelong.dao;

import java.util.List;

import com.bikelong.mapper.TrailBoardMapper;
import com.bikelong.vo.Board;

public class MySqlTrailBoardDao implements TrailBoardDao{
	
	private TrailBoardMapper trailBoardMapper;
	public void setTrailBoardMapper(TrailBoardMapper trailBoardMapper) {
		this.trailBoardMapper = trailBoardMapper;
	}


	@Override
	public void insertBoard(Board trailBoard) {
		trailBoardMapper.insertBoard(trailBoard);
	}

	@Override
	public Board selectBoard(int boardNo) {
		Board trailBoard = trailBoardMapper.selectBoard(boardNo);
		return trailBoard;
	}

	@Override
	public List<Board> selectBoardList() {
		List<Board> trailBoard = trailBoardMapper.selectBoardList();
		return trailBoard;
	}


	@Override
	public void updateBoard(Board board) {
		
		trailBoardMapper.updateBoard(board);
		
	}


	@Override
	public void deleteBoard(int boardNo) {
		
		trailBoardMapper.deleteBoard(boardNo);
	}




	
}

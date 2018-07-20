package com.bikelong.dao;

import java.util.List;

import com.bikelong.mapper.TrailBoardMapper;
import com.bikelong.vo.TrailBoard;

public class MySqlTrailBoardDao implements TrailBoardDao{
	
	private TrailBoardMapper trailBoardMapper;
	public void setTrailBoardMapper(TrailBoardMapper trailBoardMapper) {
		this.trailBoardMapper = trailBoardMapper;
	}


	@Override
	public void insertBoard(TrailBoard trailBoard) {
		trailBoardMapper.insertBoard(trailBoard);
	}

	@Override
	public TrailBoard selectBoard(String boardNo) {
		TrailBoard trailBoard = trailBoardMapper.selectBoard(boardNo);
		return trailBoard;
	}

	@Override
	public List<TrailBoard> selectBoardList() {
		List<TrailBoard> trailBoard = trailBoardMapper.selectBoardList();
		return trailBoard;
	}




	
}

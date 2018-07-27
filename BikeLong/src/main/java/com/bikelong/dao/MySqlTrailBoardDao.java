package com.bikelong.dao;

import java.util.HashMap;
import java.util.List;

import com.bikelong.mapper.TrailBoardMapper;
import com.bikelong.vo.*;

public class MySqlTrailBoardDao implements TrailBoardDao{
	
	private TrailBoardMapper trailBoardMapper;
	
	public void setTrailBoardMapper(TrailBoardMapper trailBoardMapper) {
		this.trailBoardMapper = trailBoardMapper;
	}

	@Override
	public List<TrailBoard> selectBoardList(int from, int to) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("from", from);
		params.put("to", to);
		
		return trailBoardMapper.selectBoardList(params);
	}

	@Override
	public int selectBoardCount() {
		
		return trailBoardMapper.selectBoardCount();
	}

	@Override
	public void insertBoard(TrailBoard trailBoard) {
		trailBoardMapper.insertBoard(trailBoard);
	}

	@Override
	public TrailBoard selectBoard(int boardNo) {
		TrailBoard trailBoard = trailBoardMapper.selectBoard(boardNo);
		return trailBoard;
	}
	
	@Override
	public void updateBoard(TrailBoard trailBoard) {
		
		trailBoardMapper.updateBoard(trailBoard);
		
	}

	@Override
	public TrailBoard selectBoardByBoardNo(int boardNo) {
		
		return trailBoardMapper.selectBoardByBoardNo(boardNo);
	}

	@Override
	public void deleteBoard(int boardNo) {
		
		trailBoardMapper.deleteBoard(boardNo);
	}
	
}

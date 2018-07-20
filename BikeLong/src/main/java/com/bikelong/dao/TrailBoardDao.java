package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.TrailBoard;

public interface TrailBoardDao {

	void insertBoard(TrailBoard trailBoard);

	TrailBoard selectBoard(String boardNo);

	List<TrailBoard> selectBoardList();

}
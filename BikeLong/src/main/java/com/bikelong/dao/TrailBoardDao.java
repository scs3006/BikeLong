package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Board;
import com.bikelong.vo.TrailBoard;

public interface TrailBoardDao {

	List<TrailBoard> selectBoardList(int from, int to);

	int selectBoardCount();
	
	void insertBoard(TrailBoard trailBoard);

	TrailBoard selectBoard(int boardNo);

	TrailBoard selectBoardByBoardNo(int boardNo);

	void updateBoard(TrailBoard trailBoard);

	void deleteBoard(int boardNo);
}
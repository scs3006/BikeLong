package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Board;
import com.bikelong.vo.TrailBoard;

public interface TrailBoardService {


	List<TrailBoard> findBoardList(int from, int to);

	int getBoardCount();

	TrailBoard findBoard(int boardNo);
	
	void writeBoard(TrailBoard trailBoard);
	
	void deleteBoard(int boardNo);

	TrailBoard findBoardByBoardNo(int boardNo);

	void updateBoard(TrailBoard trailBoards);
}
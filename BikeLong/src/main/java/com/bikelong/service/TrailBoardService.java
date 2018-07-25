package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Board;
import com.bikelong.vo.TrailBoard;

public interface TrailBoardService {

	void writeBoard(TrailBoard trailBoard);

	TrailBoard findBoard(int boardNo);

	List<TrailBoard> findBoardList(int from, int to);

	void updateBoard(TrailBoard trailBoard);

	void deleteBoard(int boardNo);

	int getBoardCount();

	TrailBoard findBoardByBoardNo(int boardNo);

}
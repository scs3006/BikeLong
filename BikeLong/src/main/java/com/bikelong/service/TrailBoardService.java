package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.TrailBoard;

public interface TrailBoardService {

	void writeBoard(TrailBoard trailBoard);

	TrailBoard findBoard(String boardNo);

	List<TrailBoard> findBoardList();

}
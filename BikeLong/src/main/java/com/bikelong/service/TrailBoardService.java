package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Board;

public interface TrailBoardService {

	void writeBoard(Board trailBoard);

	Board findBoard(String boardNo);

	List<Board> findBoardList();

}
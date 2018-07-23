package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Board;

public interface TrailBoardService {

	void writeBoard(Board trailBoard);

	Board findBoard(int boardNo);

	List<Board> findBoardList();

	void updateBoard(Board board);

	void deleteBoard(int boardNo);
}
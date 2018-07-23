package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Board;

public interface NoticeBoardService {

	void writeBoard(Board board);
	List<Board> findBoardListWithPaging(int from, int to);
	Board findBoardByBoardNo(int i);
	void deleteBoardTx(int boardNo);
	void updateBoard(Board board);
	int getBoardCount();
	
}
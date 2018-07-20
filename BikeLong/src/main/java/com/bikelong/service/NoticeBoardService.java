package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.Board;

public interface NoticeBoardService {

	void writeBoard(Board board);
	List<Board> findBoardList();
	Board findBoardByBoardNo(int i);
	void deleteBoard(int boardNo);
	void updateBoard(Board board);
	
}
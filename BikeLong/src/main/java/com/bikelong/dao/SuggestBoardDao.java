package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Board;

public interface SuggestBoardDao {

	void insertBoard(Board board);
	List<Board> selectBoardListWithPaging(int from, int to);
	Board selectBoardByBoardNo(int boardNo);
	void deleteBoard(int boardNo);
	void updateBoard(Board board);
	int selectBoardCount();

}
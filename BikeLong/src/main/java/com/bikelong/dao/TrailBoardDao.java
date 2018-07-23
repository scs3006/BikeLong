package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Board;

public interface TrailBoardDao {

	void insertBoard(Board trailBoard);

	Board selectBoard(int boardNo);

	List<Board> selectBoardList();

	void updateBoard(Board board);

	void deleteBoard(int boardNo);

}
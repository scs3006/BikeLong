package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Board;

public interface TrailBoardDao {

	void insertBoard(Board trailBoard);

	Board selectBoard(String boardNo);

	List<Board> selectBoardList();

}
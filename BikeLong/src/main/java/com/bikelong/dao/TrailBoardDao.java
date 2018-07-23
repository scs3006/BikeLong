package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Board;
import com.bikelong.vo.TrailBoard;

public interface TrailBoardDao {

	void insertBoard(TrailBoard trailBoard);

	TrailBoard selectBoard(int boardNo);

	List<TrailBoard> selectBoardList();

	void updateBoard(TrailBoard trailBoard);

	void deleteBoard(int boardNo);


}
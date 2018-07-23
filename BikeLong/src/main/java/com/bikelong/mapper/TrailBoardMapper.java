package com.bikelong.mapper;

import java.util.List;

import com.bikelong.vo.*;

public interface TrailBoardMapper {

	void insertBoard(Board trailBoard);
	Board selectBoard(int boardNo);
	List<Board> selectBoardList();
	void updateBoard(Board board);
	void deleteBoard(int boardNo);

}

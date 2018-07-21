package com.bikelong.mapper;

import java.util.List;

import com.bikelong.vo.*;

public interface TrailBoardMapper {

	void insertBoard(Board trailBoard);
	Board selectBoard(String boardNo);
	List<Board> selectBoardList();

}

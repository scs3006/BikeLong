package com.bikelong.mapper;

import java.util.List;

import com.bikelong.vo.*;

public interface TrailBoardMapper {

	void insertBoard(TrailBoard trailBoard);
	TrailBoard selectBoard(String boardNo);
	List<TrailBoard> selectBoardList();

}

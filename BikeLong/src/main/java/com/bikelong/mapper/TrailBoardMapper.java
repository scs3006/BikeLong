package com.bikelong.mapper;

import com.bikelong.vo.*;

public interface TrailBoardMapper {

	void insertBoard(TrailBoard trailBoard);
	TrailBoard selectBoard(String boardNo);

}

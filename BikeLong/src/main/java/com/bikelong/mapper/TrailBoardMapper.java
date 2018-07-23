package com.bikelong.mapper;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.*;

public interface TrailBoardMapper {

	void insertBoard(TrailBoard trailBoard);
	TrailBoard selectBoard(int boardNo);
	List<TrailBoard> selectBoardList();
	void updateBoard(TrailBoard trailBoard);
	void deleteBoard(int boardNo);
	

}

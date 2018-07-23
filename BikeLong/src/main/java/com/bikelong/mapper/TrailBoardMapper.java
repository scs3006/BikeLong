package com.bikelong.mapper;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.*;

public interface TrailBoardMapper {

	void insertBoard(TrailBoard trailBoard);
	TrailBoard selectBoard(int boardNo);
	List<TrailBoard> selectBoardList(HashMap<String, Object> params);
	void updateBoard(TrailBoard trailBoard);
	void deleteBoard(int boardNo);
	int selectBoardCount();
	TrailBoard selectBoardByBoardNo(int boardNo);
	

}

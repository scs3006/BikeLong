package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.SharingBoard;
import com.bikelong.vo.TrailBoard;

public interface TrailBoardService {

	void writeBoard(TrailBoard trailBoard);

	List<TrailBoard> findBoard(String boardNo);

	List<TrailBoard> findBoardList();

}
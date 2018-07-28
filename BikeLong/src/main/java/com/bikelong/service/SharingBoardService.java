package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.History;
import com.bikelong.vo.SharingBoard;

public interface SharingBoardService {

	void writeBoard(SharingBoard sharingBoard);

	SharingBoard findBoard(int boardNo);

	List<SharingBoard> findBoardList(int from, int to);

	void updateBoard(SharingBoard sharingBoard);

	void deleteBoard(int boardNo);

	List<History> findHistory(String id);

	List<History> gpsfind(String startTime, String endTime);

	int getBoardCount();

}
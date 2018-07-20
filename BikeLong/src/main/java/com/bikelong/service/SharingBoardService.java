package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.SharingBoard;

public interface SharingBoardService {

	void writeBoard(SharingBoard sharingBoard);

	List<SharingBoard> findBoard(String boardNo);

	List<SharingBoard> findBoardList();

}
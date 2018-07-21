package com.bikelong.service;

import java.util.List;

import com.bikelong.vo.SharingBoard;

public interface SharingBoardService {

	void writeBoard(SharingBoard sharingBoard);

	SharingBoard findBoard(int boardNo);

	List<SharingBoard> findBoardList();

	void updateBoard(SharingBoard sharingBoard);

	void deleteBoard(int boardNo);

}
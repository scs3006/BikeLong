package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.SharingBoard;

public interface SharingBoardDao {

	void insertBoard(SharingBoard sharingBoard);

	SharingBoard selectBoard(String boardNo);

	List<SharingBoard> selectBoardList();


}
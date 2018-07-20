package com.bikelong.mapper;

import java.util.List;

import com.bikelong.vo.SharingBoard;

public interface SharingBoardMapper {

	void insertBoard(SharingBoard sharingBoard);
	SharingBoard selectBoard(String boardNo);
	List<SharingBoard> selectBoardList();

}
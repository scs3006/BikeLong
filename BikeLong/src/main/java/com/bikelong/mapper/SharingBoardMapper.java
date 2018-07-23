package com.bikelong.mapper;

import java.util.List;

import com.bikelong.vo.SharingBoard;

public interface SharingBoardMapper {

	void insertBoard(SharingBoard sharingBoard);
	SharingBoard selectBoard(int boardNo);
	List<SharingBoard> selectBoardList();
	void updateBoard(SharingBoard sharingBoard);
	void deleteBoard(int boardNo);

}
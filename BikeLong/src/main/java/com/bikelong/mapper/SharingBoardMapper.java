package com.bikelong.mapper;

import com.bikelong.vo.SharingBoard;

public interface SharingBoardMapper {

	void insertBoard(SharingBoard sharingBoard);
	SharingBoard selectBoard(String boardNo);

}

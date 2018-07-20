package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Board;

public interface NoticeBoardDao {

	void insertBoard(Board board);
	List<Board> selectNoticeBoardList();

}
package com.bikelong.dao;

import java.util.List;

import com.bikelong.vo.Board;

public interface NoticeBoardDao {

	void insertBoard(Board board);
	List<Board> selectNoticeBoardList();
	Board selectBoardByBoardNo(int boardNo);
	void deleteBoard(int boardNo);
	void updateBoard(Board board);

}
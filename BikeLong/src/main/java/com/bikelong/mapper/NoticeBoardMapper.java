package com.bikelong.mapper;

import java.util.HashMap;
import java.util.List;

import com.bikelong.vo.Board;

public interface NoticeBoardMapper {

	void insertBoard(Board board);
	List<Board> selectBoardListWithPaging(HashMap<String, Object> params);
	Board selectBoardByBoardNo(int boardNo);
	void deleteBoard(int boardNo);
	void updateBoard(Board board);
	int selectBoardCount();

}
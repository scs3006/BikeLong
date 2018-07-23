package com.bikelong.dao;

import java.util.HashMap;
import java.util.List;

import com.bikelong.mapper.SuggestBoardMapper;
import com.bikelong.vo.Board;

public class MySqlSuggestBoardDao implements SuggestBoardDao {
	
	private SuggestBoardMapper suggestBoardMapper;

	public void setSuggestBoardMapper(SuggestBoardMapper suggestBoardMapper) {
		this.suggestBoardMapper = suggestBoardMapper;
	}

	@Override
	public void insertBoard(Board board) {
		suggestBoardMapper.insertBoard(board);
	}

	@Override
	public List<Board> selectBoardListWithPaging(int from, int to) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("from", from);
		params.put("to", to);
		return suggestBoardMapper.selectBoardListWithPaging(params);
	}
	
	@Override
	public Board selectBoardByBoardNo(int boardNo) {
		return suggestBoardMapper.selectBoardByBoardNo(boardNo);
	}

	@Override
	public void deleteBoard(int boardNo) {
		suggestBoardMapper.deleteBoard(boardNo);
	}

	@Override
	public void updateBoard(Board board) {
		suggestBoardMapper.updateBoard(board);
	}

	@Override
	public int selectBoardCount() {
		return suggestBoardMapper.selectBoardCount();
	}
}

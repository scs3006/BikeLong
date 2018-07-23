package com.bikelong.dao;

import java.util.HashMap;
import java.util.List;

import com.bikelong.mapper.NoticeBoardMapper;
import com.bikelong.vo.Board;

public class MySqlNoticeBoardDao implements NoticeBoardDao {
	
	private NoticeBoardMapper noticeBoardMapper;

	public void setNoticeBoardMapper(NoticeBoardMapper noticeBoardMapper) {
		this.noticeBoardMapper = noticeBoardMapper;
	}

	@Override
	public void insertBoard(Board board) {
		noticeBoardMapper.insertBoard(board);
	}

	@Override
	public List<Board> selectBoardListWithPaging(int from, int to) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("from", from);
		params.put("to", to);
		return noticeBoardMapper.selectBoardListWithPaging(params);
	}
	
	@Override
	public Board selectBoardByBoardNo(int boardNo) {
		return noticeBoardMapper.selectBoardByBoardNo(boardNo);
	}

	@Override
	public void deleteBoard(int boardNo) {
		noticeBoardMapper.deleteBoard(boardNo);
	}

	@Override
	public void updateBoard(Board board) {
		noticeBoardMapper.updateBoard(board);
	}

	@Override
	public int selectBoardCount() {
		return noticeBoardMapper.selectBoardCount();
	}
}

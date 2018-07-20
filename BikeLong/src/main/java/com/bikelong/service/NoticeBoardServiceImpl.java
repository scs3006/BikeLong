package com.bikelong.service;

import java.util.List;

import com.bikelong.dao.NoticeBoardDao;
import com.bikelong.vo.Board;

public class NoticeBoardServiceImpl implements NoticeBoardService {

	private NoticeBoardDao noticeBoardDao;

	public void setNoticeBoardDao(NoticeBoardDao noticeBoardDao) {
		this.noticeBoardDao = noticeBoardDao;
	}

	@Override
	public void writeBoard(Board board) {
		noticeBoardDao.insertBoard(board);
	}

	@Override
	public List<Board> findBoardList() {
		return noticeBoardDao.selectNoticeBoardList();
	}
		
}

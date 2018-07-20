package com.bikelong.service;

import com.bikelong.dao.NoticeBoardDao;

public class NoticeBoardServiceImpl implements NoticeBoardService {

	private NoticeBoardDao noticeBoardDao;

	public void setNoticeBoardDao(NoticeBoardDao noticeBoardDao) {
		this.noticeBoardDao = noticeBoardDao;
	}
		
}

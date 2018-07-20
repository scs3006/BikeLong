package com.bikelong.dao;

import com.bikelong.mapper.NoticeBoardMapper;

public class MySqlNoticeBoardDao implements NoticeBoardDao {
	
	private NoticeBoardMapper noticeBoardMapper;

	public void setNoticeBoardMapper(NoticeBoardMapper noticeBoardMapper) {
		this.noticeBoardMapper = noticeBoardMapper;
	}
	
}

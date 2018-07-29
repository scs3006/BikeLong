package com.bikelong.dao;

import com.bikelong.mapper.HistoryMapper;

public class MySqlHistoryDao implements HistoryDao {
	
	private HistoryMapper historyMapper;
	public void setHistoryMapper(HistoryMapper historyMapper) {
		this.historyMapper = historyMapper;
	}

}
